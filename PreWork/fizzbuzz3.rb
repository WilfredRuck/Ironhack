counter = 1
while counter < 100
	
	if ((counter.to_s[0] == "1") && (counter % 3 == 0) && (counter % 5 ==0))
		puts "FizzBuzzBang"

	elsif ((counter.to_s[0] == "1") && (counter % 3 == 0) && !(counter % 5 ==0))
		puts "FizzBang"

	elsif ((counter.to_s[0] == "1") && (counter % 5 ==0) && !(counter % 3 == 0))
	puts "BuzzBang"

	elsif ((counter % 3 == 0) && (counter % 5 ==0)) 
		puts "FizzBuzz"

	elsif ((counter % 3 == 0) && !(counter % 5 ==0)) 
		puts "Fizz"

	elsif ((counter % 5 == 0) && !(counter % 3 ==0)) 
		puts "Buzz"

	elsif counter.to_s[0] == "1"
		puts "Bang"

	else 
		puts counter
	end
			counter +=1
end