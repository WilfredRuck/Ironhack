class Calculator
	
	def add(numbers)
		x = 0
		add = 0
		arry = numbers.split(",")
		while x < arry.length
			
			if arry[x].to_i != 0
				puts arry[x]
				add += arry[x].to_i
				x += 1
			end
		end

		add
	end

end

calculator = Calculator.new

p calculator.add("7$7") == 14
p calculator.add("8,4") == 12

p calculator.add("6") == 6
p calculator.add("6") == 6
p calculator.add("") == 0

p "$".to_i

# p calculator.add("") ==
# p calculator.add("") ==
# p calculator.add("") ==
