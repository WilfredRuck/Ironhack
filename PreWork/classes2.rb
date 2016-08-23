class Animal
	def initialize (name)
		@name = name
	end

	def describe
		puts "This animal's name is #{@name}"
	end
end

class Dog < Animal
end

class Cat < Animal
end

class Human < Animal
	def initialize (name, salary)
		super(name)
		@salary = salary
	end

	def describe_salary
		puts "#{@name}'s salary is $#{@salary}"
	end
end

dog = Dog.new "Princess"
cat = Cat.new "Charley"
human = Human.new "Wilfred", 70000

dog.describe
cat.describe
human.describe
human.describe_salary
