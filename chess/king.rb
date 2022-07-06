require_relative "piece.rb"
class King < Piece

    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :ki
    end
end
