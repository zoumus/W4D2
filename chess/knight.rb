require_relative "piece.rb"
class Knight < Piece

    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :kn
    end
end
