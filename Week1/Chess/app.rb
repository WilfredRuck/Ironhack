require_relative("lib/piece.rb")
require_relative("lib/pawn.rb")
require_relative("lib/rook.rb")
require_relative("lib/king.rb")
require_relative("lib/knight.rb")
require_relative("lib/bishop.rb")
require_relative("lib/queen.rb")
require_relative("lib/board.rb")


#BlackSide
black_rook =   Rook.new(0, 7, "black")
black_knight = Knight.new(1, 7, "black")
black_bishop = Bishop.new(2, 7, "black")
black_queen =  Queen.new(3, 7, "black")
black_king =   King.new(4, 7, "black")
black_bishop = Bishop.new(5, 7, "black")
black_knight = Knight.new(6, 7, "black")
black_rook =   Rook.new(7, 7, "black")

black_pawn = Pawn.new(0, 7, "black")
black_pawn = Pawn.new(1, 7, "black")
black_pawn = Pawn.new(2, 7, "black")
black_pawn = Pawn.new(3, 7, "black")
black_pawn = Pawn.new(4, 7, "black")
black_pawn = Pawn.new(5, 7, "black")
black_pawn = Pawn.new(6, 7, "black")
black_pawn = Pawn.new(7, 7, "black")

#WhiteSide
white_rook =   Rook.new(0, 0, "white")
white_knight = Knight.new(1, 0, "white")
white_bishop = Bishop.new(2, 0, "white")
white_queen =  Queen.new(3, 0, "white")
white_king =   King.new(4, 0, "white")
white_bishop = Bishop.new(5, 0, "white")
white_knight = Knight.new(6, 0, "white")
white_rook =   Rook.new(7, 0, "white")

white_pawn = Pawn.new(0, 1, "white")
white_pawn = Pawn.new(1, 1, "white")
white_pawn = Pawn.new(2, 1, "white")
white_pawn = Pawn.new(3, 1, "white")
white_pawn = Pawn.new(4, 1, "white")
white_pawn = Pawn.new(5, 1, "white")
white_pawn = Pawn.new(6, 1, "white")
white_pawn = Pawn.new(7, 1, "white")

# result = Board.new(add_piblack_pawn))

game = Board.new
game.add_piece(0, 7, black_rook) 
game.add_piece(7, 7, black_rook)
game.add_piece(0, 0, white_rook)
game.add_piece(7, 0, white_rook)
game.add_piece(1, 7, black_knight)
game.add_piece(6, 7, black_knight)
game.add_piece(1, 0, white_knight)
game.add_piece(6, 0, white_knight)
game.add_piece(2, 7, black_bishop)
game.add_piece(5, 7, black_bishop)
game.add_piece(2, 0, white_bishop)
game.add_piece(5, 0, white_bishop)
game.add_piece(3, 7, black_queen)
game.add_piece(3, 0, white_queen)
game.add_piece(4, 7, black_king)
game.add_piece(4, 0, white_king)
game.add_piece(0, 6, black_pawn)
game.add_piece(1, 6, black_pawn)
game.add_piece(2, 6, black_pawn)
game.add_piece(3, 6, black_pawn)
game.add_piece(4, 6, black_pawn)
game.add_piece(5, 6, black_pawn)
game.add_piece(6, 6, black_pawn)
game.add_piece(7, 6, black_pawn)
game.add_piece(0, 1, white_pawn)
game.add_piece(1, 1, white_pawn)
game.add_piece(2, 1, white_pawn)
game.add_piece(3, 1, white_pawn)
game.add_piece(4, 1, white_pawn)
game.add_piece(5, 1, white_pawn)
game.add_piece(6, 1, white_pawn)
game.add_piece(7, 1, white_pawn)

game.can_move?(7,1,5,5) 
puts "\n"
game.can_move?(6,1,7,7) 
puts "\n"
game.can_move?(2,7,5,8) 
puts "\n"
game.can_move?(2,1,5,5) 
puts "\n"
game.can_move?(2,6,5,4) 
puts "\n"
game.can_move?(7,1,5,5) 
puts "\n"
game.can_move?(7,1,7,5) 
puts "\n"
game.can_move?(4,1,8,6) 
puts "\n"
game.can_move?(7,1,5,5) 
puts "\n"
game.can_move?(7,7,5,4) 
puts "\n"
game.can_move?(7,6,5,4) 
puts "\n"
game.can_move?(0,1,2,3) 
puts "\n"
game.can_move?(5,6,6,6) 
puts "\n"
game.can_move?(7,1,1,7) 
puts "\n"
game.can_move?(1,1,3,5) 
puts "\n"
game.can_move?(1,1,3,1)


# puts "\n"

# puts "Valid Rook Movemets"
# p black_rook_left.can_move?(1,5)  #true
# p black_rook_left.can_move?(5,8)  #true
# p "-----------------------------"
# p white_rook_right.can_move?(8,3) #true
# p white_rook_right.can_move?(2,1) #true

# puts "\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

# puts "\nInvalid Rook Movemets"
# p black_rook_left.can_move?(2,5)   #false
# p "------------------------------"
# p white_rook_right.can_move?(1,8)  #false

# puts "\n############################################################"

# puts "\nValid King Movemets"
# p black_king_left.can_move?(3,8)  #true
# p black_king_left.can_move?(1,7)  #true

# puts "\n-----------------------------"

# puts "\nInvalid King Movemets"
# p black_king_left.can_move?(5,6)   #false
# p black_king_left.can_move?(8,8)   #false

# puts "\n############################################################"

# puts "\nValid Knight Movemets"
# p black_knight_left.can_move?(7,7)  #true
# p black_knight_left.can_move?(3,7)  #true

# puts "\n-----------------------------"

# puts "\nInvalid Knight Movemets"
# p black_knight_left.can_move?(5,7)   #false
# p black_knight_left.can_move?(1,3)   #false

# puts "\n############################################################"

# puts "\nValid Bishop Movemets"
# p black_bishop_left.can_move?(7,7)  #true
# p black_bishop_left.can_move?(8,8)  #true

# puts "\n-----------------------------"

# puts "\nInvalid Bishop Movemets"
# p black_bishop_left.can_move?(5,7)   #false
# p black_bishop_left.can_move?(1,3)   #false

# puts "\n############################################################"

# puts "\nValid Queen Movemets"
# p black_queen_left.can_move?(7,7)  #true
# p black_queen_left.can_move?(1,4)  #true

# puts "\n-----------------------------"

# puts "\nInvalid Queen Movemets"
# p black_queen_left.can_move?(1,1)   #false
# p black_queen_left.can_move?(1,3)   #false

# puts "\n############################################################"

# puts "\nValid Pawn Movemets"
# p black_pawn_left.can_move?(4,3)  #true
# p black_pawn_left.can_move?(5,3)  #true

# puts "\n-----------------------------"

# puts "\nInvalid Pawn Movemets"
# p black_pawn_left.can_move?(3,1)   #false
# p black_pawn_left.can_move?(5,7)   #false


### Board
