require_relative "piece.rb"
require_relative "steppabble.rb"
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
    def move_diffs
        [[1, 2], [2, 1], [-1, 2], [2, -1], [1, -2], [-1, -2], [-2, -1], [-2, 1]]
        # arr = []
        # i, j = @pos
        # positions = possible_pos
        # arr_moves = [[i+1, j+2], [i+1,j-2], [i-1,j+2], [i-1,j-2], [i+2,j+1], [i+2,j-1], [i-2,j+1], [i-2,j-1]]
        # arr_moves.each do |ele|
        #     i, j = ele 
        #     if positions.include?(ele)
            
        #         if (board.[]([i, j]).is_a?(NullPiece) || board.[]([i, j]).color != self.color)
        #             arr << ele
        #         end
        #     end
        # end
        # arr 
    end

end
