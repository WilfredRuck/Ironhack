for counter in 1..99 do
	if ((counter % 3 == 0) && (counter % 5 ==0)) 
		puts "FizzBuzz"
	elsif ((counter % 3 == 0) && !(counter % 5 ==0)) 
		puts "Fizz"
	elsif ((counter % 5 == 0) && !(counter % 3 ==0)) 
		puts "Buzz"
	else 
		puts counter
	end
	
end