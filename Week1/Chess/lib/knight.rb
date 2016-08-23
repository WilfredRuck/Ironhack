class Knight < Piece

	def can_move?(x_dest, y_dest)
		if (x_dest == @x - 2) && (y_dest == @y - 1)
			"true"		
		elsif (x_dest == @x - 1) && (y_dest == @y - 2)
			"true"
		elsif (x_dest == @x - 2) && (y_dest == @y + 1)
			"true"
		elsif (x_dest == @x + 1) && (y_dest == @y - 2)
			"true"
		elsif (x_dest == @x - 1) && (y_dest == @y + 2)
			"true"
		elsif (x_dest == @x - 2) && (y_dest == @y + 1)
			"true"
		elsif (x_dest == @x + 2) && (y_dest == @y - 1)
			"true"
		elsif (x_dest == @x + 2) && (y_dest == @y + 1)
			"true"
		elsif (x_dest == @x + 1) && (y_dest == @y + 2)
			"true"
		else
			"false"
		end
	end
end