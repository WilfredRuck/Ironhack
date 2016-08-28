require_relative("../lib/task.rb")


RSpec.describe Task do

    describe "Task" do
        # it "IDs" do
            
        # 	task = Task.new("Buy the milk")
        #     task2 = Task.new("Wash the car")

        #      expect(task.display_id).to eq(1)
        #      expect(task2.display_id).to eq(2)
        # end

        it "Task Status" do
        	@task = Task.new("Buy the milk")
        	expect(@task.complete?).to eq(false)
        end	

        it "Completes and checks whether completed" do
			@task = Task.new("Buy the milk")
			@task.complete!
			expect(@task.complete?).to eq(true)
		end

		it "Changes status to incomplete and checks if complete" do
			@task = Task.new("Buy the milk")
			@task.complete!
			@task.make_incomplete!
			expect(@task.complete?).to eq(false)
		end

		it "Updates the content to new text" do
			@task = Task.new("Buy the mike")
			@task.update_content!("Buy the milk")
			expect(@task.content).to eq("Buy the milk")
		end
    end
end