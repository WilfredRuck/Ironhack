class Rook < Piece

	def can_move?(x_dest, y_dest)
		if (x_dest == @x) || (y_dest == @y)
			"true"
		else
			"false"
		end
	end
end