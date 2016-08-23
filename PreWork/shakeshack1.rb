class Milkshake
	def initialize
		@base_price = 3
		@ingredients = []
	end

	def add_ingredient(ingredient)
		@ingredients.push(ingredient)
	end

	def final_price
		#Let's establish what our counter
		#should be before we start adding
		#ingredients into the mix
  		final_price = @base_price
  		#add ingredients price to our total
  		@ingredients.each do |ingredient|
  			final_price += ingredient.price
  		end
  		return final_price
	end
end

class Ingredient
		attr_reader :name, :price
	def initialize(name,price)
		@name = name
		@price = price
	end
end

will_milkshake = Milkshake.new
nizars_milkshake = Milkshake.new
banana = Ingredient.new("Banana", 2)
chocolate_chips = Ingredient.new("Chocolate Chips", 1)
nizars_milkshake.add_ingredient(banana)
will_milkshake.add_ingredient(chocolate_chips)
nizars_milkshake.add_ingredient(chocolate_chips)

puts nizars_milkshake.final_price
puts will_milkshake.final_price