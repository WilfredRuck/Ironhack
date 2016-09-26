# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


admin = User.create! (
	{name: "Wilfred Ruck", email: "wilfredoruck@gmail.com", password: "butterBread", password_confirmation: "butterBread"}
)

matthew = User.create! (
	{name: "Matthew Ming", email: "drming@gmail.com", password: "gahgah", password_confirmation: "gahgah"}
)

denzel = User.create! (
	{name: "Denzel Mcgue", email: "denzel.mcgue@gmail.com", password: "deerdeer", password_confirmation: "deerdeer"}
)

admin.pictures.create! (
	{ caption: "My First Post" , location: "Miami, FL", image_file_name: "https://pixabay.com/static/uploads/photo/2015/11/07/11/02/milky-way-1030765_640.jpg?attachment, https://pixabay.com/en/milky-way-galaxy-space-universe-1030765/" }
	)

matthew.pictures.create! (
	{ caption: "I'm Testing for you" , location: "Briarwood, NY", image_file_name: "https://pixabay.com/static/uploads/photo/2015/11/07/11/02/milky-way-1030765_640.jpg?attachment, https://pixabay.com/en/milky-way-galaxy-space-universe-1030765/" }
	)

matthew.pictures.create! (
	{ caption: "I'm Testing for you Again!" , location: "Briarwood, NY", image_file_name: "https://pixabay.com/static/uploads/photo/2015/11/07/11/02/milky-way-1030765_640.jpg?attachment, https://pixabay.com/en/milky-way-galaxy-space-universe-1030765/" }
	)