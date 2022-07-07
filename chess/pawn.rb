require_relative "piece.rb"
require_relative "slideable.rb"
class Pawn < Piece
    include Slideable
    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :pa
    end

    private
    def forward_dir
        if color == :white
            return -1
        else
            return 1
        end
    end

    def at_start_row?
    end

    def forward_steps
    end

    def side_attacks
    end
end
