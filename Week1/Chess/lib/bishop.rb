class Bishop < Piece

	def can_move?(x_dest, y_dest)
		if ((x_dest - @x).abs) == ((y_dest - @y).abs) 
			"true"
		else
			"false"
		end

	end
end