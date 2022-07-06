require_relative "king.rb"
require_relative "rook.rb"
require_relative "bishop.rb"
require_relative "knight.rb"
require_relative "pawn.rb"
require_relative "queen.rb"

class Piece
    def initialize(color,board,pos)
        @color = color
        @board = board
        @pos = []
    end
end
