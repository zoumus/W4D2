require_relative "piece.rb"
require_relative "steppable.rb"

class Knight < Piece
    include Steppable
    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :kn
    end

    private
    def move
    end
end
