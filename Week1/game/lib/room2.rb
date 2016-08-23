class Room2
	def initializa()
	end

	def room2(compass)
		puts "You are in a basement. There is a a man with a chainsaw staring at you."
		puts "There is a a door to the East...but so is he"
		puts "\n> E"
		compass = gets.chomp.upcase
	
		if compass != "E"
			puts "\nO don't be scared now, go through the damn door!"
			compass = ""
			puts "---------------------------------------"
			room2(compass)
	
		elsif compass == "E"
			compass = ""
			room3(compass)
		end		
	end
end