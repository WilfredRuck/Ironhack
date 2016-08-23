class Room1
	def initializa()
	end

	def room1(compass)
		puts "\nYou are in a dark room. There is a a door to the north"
		puts "\n> N"
		compass = gets.chomp.upcase
	
		if compass != "N"
			puts "\nI gave you the answer, you fool!"
			compass = ""
			puts "---------------------------------------"
			room1(compass)
	
		elsif compass == "N"
			compass = ""
			room2(compass)
		end	
	end	
end	