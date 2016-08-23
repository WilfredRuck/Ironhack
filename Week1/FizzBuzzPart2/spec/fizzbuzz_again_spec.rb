require_relative("../lib/fizzbuzz_again.rb")

RSpec.describe Fizzbuzzer do
	
	describe "Takes in number and prints FizzBuzz variation" do
		
		it "returns 7 because it is not divisible by 3 or 5" do
			attempt = Fizzbuzzer.new
			expect(attempt.fizz_buzz(7)).to eq(7)
		end

		it "returns 11 because it is not divisible by 3 or 5" do
			attempt = Fizzbuzzer.new
			expect(attempt.fizz_buzz(11)).to eq(11)
		end

		it "returns Fizz because it is divisible by 3 but not 5" do
			attempt = Fizzbuzzer.new
			expect(attempt.fizz_buzz(9)).to eq("Fizz")
		end

		it "returns Fizz because it is divisible by 3 but not 5" do
			attempt = Fizzbuzzer.new
			expect(attempt.fizz_buzz(12)).to eq("Fizz")
		end

		it "returns Buzz because it is divisible by 5 but not 3" do
			attempt = Fizzbuzzer.new
			expect(attempt.fizz_buzz(10)).to eq("Buzz")
		end

		it "returns Buzz because it is divisible by 5 but not 3" do
			attempt = Fizzbuzzer.new
			expect(attempt.fizz_buzz(25)).to eq("Buzz")
		end

		it "returns FizzBuzz because it is divisible by 5 and 3" do
			attempt = Fizzbuzzer.new
			expect(attempt.fizz_buzz(15)).to eq("FizzBuzz")
		end

		it "returns FizzBuzz because it is divisible by 5 and 3" do
			attempt = Fizzbuzzer.new
			expect(attempt.fizz_buzz(30)).to eq("FizzBuzz")
		end
		
	end

end