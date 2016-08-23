class Piece
  attr_reader :pos_x, :pos_y, :color

  def initialize(pos_x, pos_y, color)
    @pos_x = pos_x
    @pos_y = pos_y
    @color = color
  end
end