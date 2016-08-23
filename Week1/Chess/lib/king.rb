class King < Piece
	

	def can_move?(x_dest, y_dest)
		if (x_dest == @x + 1) && ((y_dest == @y + 1) || 
		   (y_dest == @y) || (y_dest == @y - 1))
			"true"
		elsif (x_dest == @x - 1) && ((y_dest == @y + 1) ||
		      (y_dest == @y) || (y_dest == @y - 1))
			"true"

		elsif (y_dest == @y - 1) && ((x_dest == @x + 1) ||
		      (x_dest == @x) || (x_dest == @x - 1))
			"true"
		elsif (y_dest == @y + 1) && ((x_dest == @x + 1) ||
		      (x_dest == @x) || (x_dest == @x- 1))
			"true"
							
		else
			"false"
		end

	end
end