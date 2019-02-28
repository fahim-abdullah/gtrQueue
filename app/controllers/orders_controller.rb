class OrdersController < ApplicationController
	def index
		@orders = Order.all
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.new(order_params)
		if @order.save
			redirect_to order_path(@order)
		else
			render 'new'
		end
	end

	def show
		@order = Order.find(params[:id])
	end

	def documents 
		@order = Order.find(params[:order_id])
	end

	def locate
		@order = Order.find(params[:order_id])
	end

	def update 
		@order = Order.find(params[:id])
		if @order.update(order_params)
			flash[:notice] = "Updated"
			redirect_to order_path(@order)
		else
			# render 'documents'
		end
	end

	private
	def order_params 
		params.require(:order).permit(:prefix, :awbnum, :terminal_charge, :pieces, :perishable_status, :pieces_found, :partial_release, :located_time, :arranged_time, :delivered_by, :delivery_time)
	end
end
