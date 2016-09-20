class SandwichViewsController < ApplicationController

	def index
		@sandwiches = Sandwich.all
	end

	def show
		@sandwich = Sandwich.find_by(id: params[:id])
		@ingredients = Ingredient.all
		
		@sandwich.ingredients.each do |ingredient|
			@sandwich.total_calories += ingredient.calories
		end

		@sandwich.save
	end
end
