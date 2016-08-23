class Task
    attr_reader :content, :id
    @@current_id = 1
    def initialize(content)
        @content = content
        @id = @@current_id
        @@current_id += 1
        @complete = false
    end

    def display_id
    	@id
    end

    def complete?
     	if @complete == true #Only need @complete
     		true
     	else
     		false
     	end
    end 

    def complete!
    	@complete = true 
    end

    def make_incomplete!
    	@complete = false
    end

    def update_content!(new_content)
    	@content = new_content
    	puts @content
    end
end

update = Task.new("Buy the mike")
update.update_content!("Buy the milk")
# task = Task.new("Buy the milk")
# puts "#{task.id}. #{task.content}"

# task.complete? #false
# task.complete!
# task.complete? #true

# task.make_incomplete!



# task2 = Task.new("Wash the car")
# puts "#{task2.id}. #{task2.content}"

# task.complete? #false
# task.complete!
# task.complete? #true



# Class TodoList ### Create a SPec file for this class
# 	attr_reader :tasks

# 	def initialize
# 		@tasks = []
# 	end

# 	def add_task(new_task)
# 		@task.push(new_task)
# 	end

# 	def delete_task(task_id)
# 		@task.delete_if{ |the_task| the_task.id == task_id}
# 	end

# 	def find_task_by_id(task_id)
# 		@task.find {|the_task| the_task.id == task_id}
# 	end
# end