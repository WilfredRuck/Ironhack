require_relative("../lib/calculator.rb")

RSpec.describe Calculator do
	
	describe "add method" do
		it "returns the addition of two number from a string" do
			the_calculator = Calculator.new
			expect(the_calculator.add("7,7")).to eq(14)
		end

		it "returns the addition of 4 numbers from a string" do
			the_calculator = Calculator.new
			expect(the_calculator.add("7,7,1,2")).to eq(17)
		end

		it "returns the addition of an empty string" do
			the_calculator = Calculator.new
			expect(the_calculator.add("")).to eq(0)
		end

		it "returns the addition of 4 numbers from a string,
			ignoring $'s and commas" do
			the_calculator = Calculator.new
			expect(the_calculator.add("7$7,1,2")).to eq(17)
		end
	end
	# it "returns blah blah blah " do
	# 	expect(Calculator.new.add("")).toeq(0)
	# end
end