class Board
	attr_reader :board
	def initialize
		@board = [[],[],[],[],[],[],[],[]]
	end

	def add_piece(x, y, piece)
		@board[x][y] = piece
	end

	def can_move?(x, y, dest_x, dest_y)
		if (dest_x >= 0) && (dest_x <= 7) && (dest_y >= 0) && (dest_y <= 7)
			
			if @board[dest_x][dest_y] == nil 
				if @board[x][y].can_move?(dest_x, dest_y)
					puts "Thumbs up!"
				else
					puts "Thumbs down."
				end

			elsif @board[dest_x][dest_y].color != @board[x][y].color
				puts "You captured a piece!"
			else
				puts "One of your pieces already occupies that location."
			end
		else
			puts "Stay within the board please..."
		end
	end
end

		  # puts"\nbR bN bB bQ bK bB bN bR\n"
    	  # puts"bP bP bP bP bP bP bP bP\n"
    	  # puts"-- -- -- -- -- -- -- --\n"
		  # puts"-- -- -- -- -- -- -- --\n"
		  # puts"-- -- -- -- -- -- -- --\n"
		  # puts"-- -- -- -- -- -- -- --\n"
		  # puts"wP wP wP wP wP wP wP wP\n"
		  # puts"wR wN wB wQ wK wB wN wR\n"