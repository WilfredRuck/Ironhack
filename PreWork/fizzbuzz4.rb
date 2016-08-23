#BROKEN CODE


counter = 1
while counter < 100
	result = ""

	if ((counter % 3 == 0) && !(counter % 5 ==0)) 
		result << "Fizz"
	end

	if ((counter % 5 == 0) && !(counter % 3 ==0)) 
		result << "Buzz"
	end
		
	if counter.to_s[0] == "1"
		result << "Bang"
	end

	if (!(counter.to_s[0] == "1") && !(counter % 3 == 0) && !(counter % 5 ==0))
		result << counter.to_s
	end

	puts result
	counter += 1
end