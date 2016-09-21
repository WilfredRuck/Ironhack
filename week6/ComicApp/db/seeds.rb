# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

john, rick, black_panther = User.create! ([
	{name: "John Stewart", email: "john@justice.com", password: "screwbatman", password_confirmation: "screwbatman"},
	{name: "Rick Grimes", email: "rick@walking.com", password: "carl  ", password_confirmation:"carl  "},
	{name: "Black Panther", email: "panther@wakonda.com", password: "ihatesteve", password_confirmation: "ihatesteve"}
	])

john.comics.create!([
	{ title: "Justice League", publisher: "blah"}
	])

rick.comics.create!([
	{ title: "Walking Dead", publisher: "blah"}
	])
	
	
