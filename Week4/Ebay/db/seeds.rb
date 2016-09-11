# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

a = User.create!(name:'Wilfred Ruck',email:'wilfredoruck@gmail.com')
b = User.create!(name:'Stephen Ruck',email:'stephenrruck@gmail.com')
c = User.create!(name:'Angee Ruck',email:'angeecruck@gmail.com')
d = User.create!(name:'Wilfred Ruck',email:'wilfredtruck@gmail.com')
e = User.create!(name:'Gemma Ruck',email:'gemmaaruck@gmail.com')

a.Product.create!(title:'Gamecube', description:'Old Gaming System', deadline:'09/19/16')
b.Product.create!(title:'Macbook', description:'Best laptop for your money', deadline:'09/16/16')
c.Product.create!(title:'Moto X Pure', description:'Awesome Android phone', deadline:'09/09/16')
d.Product.create!(title:'House', description:'5 bedroom house with pool', deadline:'12/15/16')
e.Product.create!(title:'Banana', description:'Yellow do-hicky', deadline:'10/10/17')