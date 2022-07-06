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
    def moves 
        arr = []
        i, j = @pos
        positions = possible_pos
        arr_moves = [[i+1, j+2], [i+1,j-2], [i-1,j+2], [i-1,j-2], [i+2,j+1], [i+2,j-1], [i-2,j+1], [i-2,j-1]]
        arr_moves.each do |ele|
            i, j = ele 
            if positions.include?(ele)
                debugger
                if (board.[]([i, j]).is_a?(NullPiece) || board.[]([i, j]).color != self.color)
                    arr << ele
                end
            end
        end
        arr 
    end

    def possible_pos
        arr = []
        (0..7).each do |num1|
            (0..7).each do |num2|
                arr << [num1, num2]
            end
        end
        arr
    end
end
