# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(name:'Wilfred Ruck',email:'wilfredoruck@gmail.com')
User.create!(name:'Stephen Ruck',email:'stephenrruck@gmail.com')
User.create!(name:'Angee Ruck',email:'angeecruck@gmail.com')
User.create!(name:'Wilfred Ruck',email:'wilfredtruck@gmail.com')
User.create!(name:'Gemma Ruck',email:'gemmaaruck@gmail.com')

Product.create!(title:'Gamecube', description:'Old Gaming System', deadline:'09/19/16')
Product.create!(title:'Macbook', description:'Best laptop for your money', deadline:'09/16/16')
Product.create!(title:'Moto X Pure', description:'Awesome Android phone', deadline:'09/09/16')
Product.create!(title:'Table', description:'White plain table', deadline:'09/08/16')
Product.create!(title:'House', description:'5 bedroom house with pool', deadline:'12/15/16')
Product.create!(title:'Banana', description:'Yellow do-hicky', deadline:'10/10/17')