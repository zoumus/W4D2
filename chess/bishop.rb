require_relative "piece.rb"
# require_relative "slideable.rb"

class Bishop < Piece
    # include Slideable
    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :bi
    end
end
