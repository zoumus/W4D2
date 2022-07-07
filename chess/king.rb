require_relative "piece.rb"
require_relative "steppable.rb"
class King < Piece
    include Steppable
    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        super
    end

    def symbol
        :ki
    end

    private
    def move_diffs
        [[1, 0],[1, -1],[1, 1],[-1, -1], [-1, 0], [-1,1],[0, -1], [0, 1]]
        # i, j = pos 
        # num = 1
        # arr = []
        # positions = possible_pos
        # moves = [
        #     [i + num, j + num], [i - num, j - num], [i - num, j + num], [i + num, j - num], 
        #     [i + num, j], [i - num, j], [i, j + num], [i, j - num]
        #         ]
        # arr.concat(moves.select { |ele| positions.include?(ele) } )
        # return arr
    end

    
end
