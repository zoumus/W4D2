require_relative "piece.rb"
class Rook < Piece

    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :ro
    end

    private
    def move
    end
end
