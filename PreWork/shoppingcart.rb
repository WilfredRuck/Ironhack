class ShoppingCart
	def initialize
		@items = []
	end
end

class Item
	def initialize(name,price)
		@name = name
		@price = price
	end

	def price 
		
	end
end

class Houseware < Item
	def price
	
	end
end

class Fruit < Item
	def price
	
	end
end