Class TodoList ### Create a SPec file for this class
	attr_reader :tasks

	def initialize
		@tasks = []
	end

	def add_task(new_task)
		@task.push(new_task)
	end

	def delete_task(task_id)
		@task.delete_if{ |the_task| the_task.id == task_id}
	end

	def find_task_by_id(task_id)
		@task.find {|the_task| the_task.id == task_id}
	end
end