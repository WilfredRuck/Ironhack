class Home
  attr_reader(:name, :city, :capacity, :price)

  def initialize(name, city, capacity, price)
    @name = name
    @city = city
    @capacity = capacity
    @price = price
  end
end

homes = [
  Home.new("Nizar's place", "San Juan", 2, 42),
  Home.new("Fernando's place", "Seville", 5, 47),
  Home.new("Josh's place", "Pittsburgh", 3, 41),
  Home.new("Gonzalo's place", "Málaga", 2, 45),
  Home.new("Ariel's place", "San Juan", 4, 49)
  ]


# for number in 0..100
#   puts number
# end

# for pos in 0..100
#   puts homes[pos].name
# end

homes.each do |hm|
  puts "#{hm.name}'s place in #{hm.city}\nPrice: $#{hm.price} a night"
end

puts "________________________________________"

cities = []

homes.each do |hm|
  cities.push(hm.city)
end

p cities

puts "________________________________________"

cities = homes.map do |hm|
  hm.city
end

p cities