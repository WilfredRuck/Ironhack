# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin = User.create! (
	{name: "Wilfred Ruck", email: "wilfredoruck@gmail.com", password: "willyn", password_confirmation: "willyn"}
)

matthew = User.create! (
	{name: "Matthew Ming", email: "drming@gmail.com", password: "gahgah", password_confirmation: "gahgah"}
)

denzel = User.create! (
	{name: "Denzel Mcgue", email: "denzel.mcgue@gmail.com", password: "deerdeer", password_confirmation: "deerdeer"}
)

lyn = User.create! (
	{name: "Lyndaisha Harris-Harrell", email: "thelynconcept@gmail.com", password: "artallonmywalls", password_confirmation: "artallonmywalls"}
)