require_relative("lib/color_counter.rb")

color_array = ["baby blue", "red", "indigo", "teal", "black", "black","teal"]

color_counter = Color_counter.new()


p color_counter.count_colors("indigo", color_array) == 1
p color_counter.count_colors("red", color_array) == 1
p color_counter.count_colors("teal", color_array) == 2

p color_counter.count_colors("blue", color_array) == 0
p color_counter.count_colors("white", color_array) == 0

caps_colors = color_array.map do |the_color|
	the_color.upcase
end

p caps_colors