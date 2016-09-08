class TimeEntriesController < ApplicationController
	def index
		@project = Project.find(params[:project_id])
		@time_entries = @project.time_entries #.where(
		# 	date: Time.now.beginning_of_month..Time.now.end_of_month
		# )  TO ONLY SHOW ENTRIES OF THE CURRENT MONTH
	end

	def new
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new
	end

	def create
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.new(
			minutes: params[:time_entry][:hours],
			hours: params[:time_entry][:minutes]
			)
		@time_entry.save
		redirect_to "/projects/#{@project.id}"

	end

end

