class StaffsController < ApplicationController
	before_action :set_timezone

	def index
		@staffs = Staff.all
	end

	def edit
		@staff = Staff.find(params[:id])
	end

	def new
		@staff = Staff.new
	end

	def create
		@staff = Staff.new(staff_params)
		if @staff.save
			redirect_to staffs_path
		else
			render 'new'
		end
	end

	def show
		@staff = Staff.find(params[:id])
	end

	def update 
		@staff = Staff.find(params[:id])
		if @staff.update(staff_params)
			# flash[:notice] = "Updated"
			redirect_to staffs_path
		else
			# render 'documents'
		end
	end

	def destroy
		@staff = Staff.find(params[:id])
		@staff.destroy
		# flash[:notice] = "Article was successfully deleted"
		redirect_to staffs_path
	end

	private
	def staff_params 
		params.require(:staff).permit(:name, :staff_id)
	end
	def set_timezone
		Time.zone = "Kuala Lumpur"
	end
	
end
