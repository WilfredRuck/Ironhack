# require_relative("lib/room1.rb")
# require_relative("lib/room2.rb")
# require_relative("lib/room3.rb")

class Direction
    def initialize()
    end
    def room1(compass)
        puts "\nYou are in a dark room. There is a a door to the north"
        puts "\n> N"
        compass = gets.chomp
    
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
    def room2(direction)
        puts "You are in a basement. There is a a man with a chainsaw staring at you."
        puts "There is a a door to the East...but so is he"
        puts "\n> E"
        compass = gets.chomp
    
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
    def room3(direction)
        puts "This is the last room. But is it a room?"
        puts "Trees surround the area, but there is a door far away East"
        puts "Sounds pleasant, except for the 8 hungry Panthers lurking around."
        puts "Run forest...run."
        puts "\n> E"
        compass = gets.chomp
    
        if compass != "E"
            puts "You hesitate, you die, goodbye!"
        
    
        elsif compass == "E"
            puts "Congradulations, you seem to have made it free."
            puts "But did I say where the door led?"
            puts "Welcome to the new Freedom Tower in NYC, enjoy your fall!"
        end
    end     
end

puts "Welcome to the Game of Rooms, nothing like Game of Thrones," 
puts "except that you WILL die."
puts "You can direct yourself in each direction with N, S, E, W"
puts "Good luck, MUAHHAHAHAHAHAHAAAAA!"
option = ""
direction = Direction.new()
direction.room1(option)






