class UsersController < ApplicationController
	before_action :set_timezone

	def index
		@users = User.all
	end

	def edit
		@user = User.find(params[:id])
	end

	def new
		@user = User.new
	end

	def create
		@user = User.new(user_params)
		if @user.save
			redirect_to users_path
		else
			render 'new'
		end
	end

	def show
		@user = User.find(params[:id])
	end

	def update 
		@user = User.find(params[:id])
		if @user.update(user_params)
			# flash[:notice] = "Updated"
			redirect_to users_path
		else
			# render 'documents'
		end
	end

	def destroy
		@user = User.find(params[:id])
		@user.destroy
		# flash[:notice] = "Article was successfully deleted"
		redirect_to users_path
	end

	private
	def user_params 
		params.require(:user).permit(:username, :password, :admin)
	end
	def set_timezone
		Time.zone = "Kuala Lumpur"
	end

end
