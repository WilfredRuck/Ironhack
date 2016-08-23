class Car 
	def initialize(sound,name,speed)
		@sound = sound
		@name = name
		@speed = speed
		@planet_array = []
	end

	def carDetails
		puts ("This car sounds like #{@sound}, named #{@name} because of its top speed of #{@speed}.")
	end

	def travelTo(planet_name)
		@planet_array.push(planet_name)
	end

	def citiesVisited
		p @planet_array
	end

end


car1 = Car.new("BroomBroooom","BAC Mono",50000)
car2 = Car.new("BlubBlubBlub","Bugati",20)

car1.carDetails
car1.travelTo("California")
car1.travelTo("WestBubbleDuck")
car1.citiesVisited

car2.carDetails
car2.travelTo("The Corner Store")
car2.travelTo("Down the Block")
car2.citiesVisited

