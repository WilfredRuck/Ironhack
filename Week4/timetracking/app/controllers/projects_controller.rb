class ProjectsController < ApplicationController

	def index
		@projects = Project.order(created_at: :DESC).limit(10)

		render 'index'
	end

	def show
		@project = Project.find_by(id: params[:id])
		render 'show'
	end
end
