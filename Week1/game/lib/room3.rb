class Room3
	def initializa()
	end

	def room3(compass)
		puts "This is the last room. But is it a room?"
		puts "Trees surround the area, but there is a door far away East"
		puts "Sounds pleasant, except for the 8 hungry Panthers lurking around."
		puts "Run forest...run."
		puts "\n> E"
		compass = gets.chomp.upcase
	
		if compass != "E"
			puts "You hesitate, you die, goodbye!"
		
	
		elsif compass == "E"
			puts "Congradulations, you seem to have made it free."
			puts "But did I say where the door led?"
			puts "Welcome to the new Freedom Tower in NYC, enjoy your fall!"
		end
	end
end
