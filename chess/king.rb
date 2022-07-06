require_relative "piece.rb"
require_relative "steppable.rb"
class King < Piece
    include Steppable
    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :ki
    end

    private
    def move
        i , j = pos
        king_move = [[i+1, j-1],[i+1,j],[i+1,j+1],[i,j-1],[i,j+1],[i-1,j-1], [i-1,j],[i-1,j-1]]
    end
end
