class ProjectsController < ApplicationController

	def index
		@projects = Project.order(created_at: :DESC).limit(10)

		render 'index'
	end

	def show
		@project = Project.find_by(id: params[:id])
		render 'show'
	end

	def new
		@project = Project.new
	end

	def create
		@project = Project.new(name: params[:project][:name],
					    description: params[:project][:description])
	@project.save
	redirect_to "/projects"
	end
end
