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
        king_move = []
    end
end
