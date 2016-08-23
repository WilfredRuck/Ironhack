def shift (message,shift)
	convert = []
	final = []
	f = 0

	while (f < message.length)
		
		if message[f] == " "
			f += 1
		else
			convert << message[f].ord
			f += 1
		end

	end

	convert.each do |number|
		number += shift

		if number < 97 
			number = number + 26
			final << number.chr
		else
			final << number.chr
		end

	end
	
	print final
end

shift("a b c d e", 3)

#puts "a"
#convert = "a".ord
#convert = convert + 25 
#puts convert.chr   # changes a to z skipping special characters