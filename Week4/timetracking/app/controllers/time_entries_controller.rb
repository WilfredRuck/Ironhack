class TimeEntriesController < ApplicationController
		
	def update
		@project = Project.find(params[:project_id])
		@time_entry = @project.time_entries.find(params[:id])

		@time_entry.update(
			minutes: params[:time_entry][:hours],
			hours: params[:time_entry][:minutes]
			)
		if time_entry.update(time_entry_params)
		redirect_to "/projects/#{project.id}/time_entries"
		else
			redirect_to "/projects/#{project.id}/time_entries/#{time_entry.id}/edit"
		end
	end

	private

		def time_entry_params
			params.require(:time_entry).permit(:hours, :minutes)
		end


	def edit
		@project = Project.find(params[:project_id])
		@project.time_entries.find(params[:id])
	end	

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
		@time_entry = @project.time_entries.new(time_entry_params)
		@time_entry.save
		redirect_to "/projects/#{@project.id}"

	end

end

