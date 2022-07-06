require_relative "piece.rb"
class Pawn < Piece

    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :pa
    end
end
