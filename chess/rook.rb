require_relative "piece.rb"
require_relative "slideable.rb"

class Rook < Piece
    include Slideable
    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :ro
    end

    private
    def move
        horizontal
    end
end
