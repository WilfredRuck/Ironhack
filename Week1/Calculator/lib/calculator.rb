class Calculator
	
	def add(numbers)
		x = 0
		add = 0
		arry = numbers.split(/[$,]/)
		while x <= arry.length
				add += arry[x].to_i
				x += 1
		end

		add
	end

end