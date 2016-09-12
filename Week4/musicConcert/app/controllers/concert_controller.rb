class ConcertController < ApplicationController

	def index
		
  		@concerts = Concert.all
  
	end

	def show
		# @project = Project.find_by(id: params[:id])
		# render 'show'
	end

	def new
		# @project = Project.new
	end

	def create
	# 	@project = Project.new(name: params[:project][:name],
	# 				    description: params[:project][:description])
	# @project.save
	# redirect_to "/projects/#{project.id}/time_entries"
	end

end
