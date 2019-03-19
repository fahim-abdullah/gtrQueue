class OrdersController < ApplicationController
	before_action :set_timezone
	before_action :order_find, only: [:documents, :locate, :deliver]
	before_action :all_orders, only: [:index, :status_table, :requests_table, :progress_table, :delivery_table]

	def index
	end

	def edit
		@order = Order.find(params[:id])
	end

	def new
		@order = Order.new
	end

	def create
		@order = Order.new(order_params)
		@order.user = User.first
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
			render 'requests_table'
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
		# @orders.map {|order| order.created_at.strftime("%I:%M") if order.created_at != nil }
	end

	def requests_table
	end

	def progress_table
	end

	def delivery_table
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

    def all_orders
    	@orders = Order.all
    end
end
