require_relative "piece.rb"
class Pawn < Piece

    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :pa
    end

    private
    def move
    end
end
