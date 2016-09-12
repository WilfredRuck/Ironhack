# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


Concert.create!(artist: 'Kanye West', venue: 'Madison Square Garden', city: 'New York City',
	date: '09/19/2016', price: '$350', description: 'Kanye West debuting his newest album, Pablo.')

Concert.create!(artist: 'Fabolous', venue: 'Barclay\'s Center', city: 'New York City', 
	date: '09/16/2016', price: '$150', description: 'After putting out mixtape after mixtape, Fabolous has came back home to show his city some love.')

Concert.create!(artist: 'Drake', venue: 'Rupp Arena', city: 'Lexington', 
	date: '10/16/2016', price: '$280', description: 'Drake is back again with his serenading voice.')

Concert.create!(artist: 'Big Krit', venue: 'AmericanAirlines Arena', city: 'Miami', 
	date: '12/20/2016', price: '$80', description: 'This down-south artist has been rising in the rap community to be one of best from the south. Come watch as he debuts his newest album, Cadillactica.')

