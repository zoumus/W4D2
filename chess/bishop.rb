require_relative "piece.rb"


class Bishop < Piece

    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :bi
    end

    private
    def move
    end
end
