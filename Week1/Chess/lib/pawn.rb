class Pawn < Piece
	def initialize(x,y,color)
		@x = x
		@y = y
		@color = color
	end

	def can_move?(x_dest, y_dest)
		if (x_dest == @x + 1 || x_dest == @x + 2) && (y_dest == @y)
			"true"
		else
			"false"
		end
	end
end

###  NEED TO EDIT THIS CLASS TO REPRESENT BOTH WHITE AND BLACK CHESS PIECES.
### BLACK PIECES NEED TO BE ADJUSTED BY -1 OR -2. 
### ALSO I NEED TO CHECK TO SEE IF IT IS THAT PAWN'S FIRST MOVE.