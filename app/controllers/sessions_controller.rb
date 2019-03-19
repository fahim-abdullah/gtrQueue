class SessionsController < ApplicationController
	def new 
		redirect_to new_order_path if logged_in?
	end

	def create
		user = User.find_by(username: params[:session][:username])
		if user && user.authenticate(params[:session][:password])
			session[:user_id] = user.id
			flash[:success] = "You have successfully logged in"
			redirect_to new_order_path
		else
			flash.now[:danger] = "There was something wrong with your login information"
			render 'new'
		end

	end

	def destroy
		session[:user_id] = nil
		flash[:success] = "You have logged out!"
		redirect_to progress_table_path
	end

end