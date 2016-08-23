#first exercise
#classmates_names = ["frank", "wilfred", "mike"]
#
#classmates_names.each do |classmates_name|
#
#	puts "Hello, good morning #{classmate_name}"
#end
#
#second exercise
#cities = ["new york", "miami", "ponce"]
#
#classmate_cities = cities.map do |cities| 
#	cities.capitalize
#end
#
#
#p  classmate_cities
#
#third exercise
#numbers_array = [ 20, 30, 50, 70, 80]
#
#total=0
#
#numbers_array.each do |the_new_number|
#	total += the_new_number
#end
#
#puts total
#
#numbers_array = [ 20, 30, 50, 70, 80]
#
#total=0
#
#total = numbers_array.reduce(0) do |sum, the_new_number|
#	sum + the_new_number
#end
#
#puts total
#
numbers_array = [ 20, 30, 50, 70, 80]

total=0

total = numbers_array.reduce(0) do |sum, the_new_number|
    puts "Current Sum: #{sum}"
    puts "Current Number: #{the_new_number}"
    puts "New Results: #{sum + the_new_number}"
    puts "______________________________________"

    

	sum + the_new_number
end

puts total
