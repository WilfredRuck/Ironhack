# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
a = Project.create!(name: 'Ironhack', description: 'Ironhack is a....')

b = Project.create!(name: 'Time Tracking App', description: 'Project finished')

c = Project.create!(name: 'Recipes', description: 'Track my favorite recipes')

d = Project.create!(name: 'Pancakes', description: 'Chocolate Chip')

e = Project.create!(name: 'Miami', description: 'Hot version of New York with crazy drivers')

f = Project.create!(name: 'MacBook', description: 'A laptop')

g = Project.create!(name: 'Lamborghini', description: 'A fast car')

h = Project.create!(name: 'Henessy Venom GT', description: 'Thee Fastest Car')

i = Project.create!(name: 'Red', description: 'The best color in the world')

j = Project.create!(name: 'Delta', description: 'An airline')

a.time_entries.create( hours: '5', minutes: '3')
b.time_entries.create( hours: '1', minutes: '3')
c.time_entries.create( hours: '3', minutes: '54')
d.time_entries.create( hours: '5', minutes: '52')
e.time_entries.create( hours: '2', minutes: '2')
f.time_entries.create( hours: '1', minutes: '0')
g.time_entries.create( hours: '0', minutes: '30')
h.time_entries.create( hours: '9', minutes: '19')
i.time_entries.create( hours: '8', minutes: '28')
j.time_entries.create( hours: '9', minutes: '16')