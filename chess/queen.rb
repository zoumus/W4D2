require_relative "piece.rb"
class Queen < Piece

    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :qu
    end

    private
    def move
    end
end
