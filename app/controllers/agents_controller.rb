class AgentsController < ApplicationController
	before_action :set_timezone

	def index
		@agents = Agent.all
	end

	def edit
		@agent = Agent.find(params[:id])
	end

	def new
		@agent = Agent.new
	end

	def create
		@agent = Agent.new(agent_params)
		if @agent.save
			redirect_to agents_path
		else
			render 'new'
		end
	end

	def show
		@agent = Agent.find(params[:id])
	end
	
	def update 
		@agent = Agent.find(params[:id])
		if @agent.update(agent_params)
			# flash[:notice] = "Updated"
			redirect_to agents_path
		else
			# render 'documents'
		end
	end
	
	def destroy
		@agent = Agent.find(params[:id])
		@agent.destroy
		# flash[:notice] = "Article was successfully deleted"
		redirect_to agents_path
	end
	
	private
	def agent_params 
		params.require(:agent).permit(:name)
	end
	def set_timezone
		Time.zone = "Kuala Lumpur"
	end
	
end
