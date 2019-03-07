class OrdersController < ApplicationController
	before_action :set_timezone
	before_action :order_find, only: [:documents, :locate, :deliver]

	def index
		@orders = Order.all
	end

	def edit
		@order = Order.find(params[:id])
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.new(order_params)
		if @order.save
			redirect_to new_orders_path
		else
			render 'new'
		end
	end

	def show
		@order = Order.find(params[:id])
	end
	
	def update 
		@order = Order.find(params[:id])
		if @order.update(order_params)
			# flash[:notice] = "Updated"
			redirect_to status_table_path
		else
			render 'documents'
		end
	end
	
	def destroy
		@order = Order.find(params[:id])
		@order.destroy
		# flash[:notice] = "Article was successfully deleted"
		redirect_to orders_path
	end
	
	def documents 
	end

	def locate
	end

	def deliver
	end

	def status_table
		@orders = Order.all
		# @orders.map {|order| order.created_at.strftime("%I:%M") if order.created_at != nil }
	end

	def requests_table
		@orders = Order.all
	end

	def progress_table
		@orders = Order.all
	end

	def delivery_table
		@orders = Order.all
	end

	private
	def order_params 
		params.require(:order).permit(:prefix, :awbnum, :terminal_charge, :agent_name, :pieces, :perishable_status, :pieces_found, :partial_release, :located_time, :arranged_time, :delivered_by, :delivery_time)
	end
	def set_timezone
		Time.zone = "Kuala Lumpur"
	end
	def order_find
      	@order = Order.find(params[:order_id])
    end
end
