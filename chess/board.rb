require_relative "pieces.rb"

class Board
    # include "singleton"

    attr_accessor :grid

    def initialize
        @grid = Array.new(8) { Array.new(8) }
        @null_piece = NullPiece.instance
        make_grid
    end

    def make_grid
        last_row = [Rook, Knight, Bishop, King, Queen, Bishop, Knight, Rook]
        many_pawns = [Pawn, Pawn, Pawn, Pawn, Pawn, Pawn, Pawn, Pawn]

        @grid.each_with_index do |el1, i1|
            @grid.each_with_index do |el2, i2|
                if i1 == 0
                    @grid[i1][i2] = last_row[i2].new("white",self,[i1,i2])
                elsif i1 == 1
                    @grid[i1][i2] = many_pawns[i2].new("white",self,[i1,i2])
                elsif i1 == 7
                    @grid[i1][i2] = last_row[i2].new("black",self,[i1,i2])
                elsif i1 ==6
                    @grid[i1][i2] = many_pawns[i2].new("black",self,[i1,i2])
                else
                    @grid[i1][i2] = @null_piece
                end
            end
        end
        @grid
    end

    def render
        @grid.each do |arr|
            p arr.join(" ")
         end
    end

    def [](pos)
        row, col = pos
        grid[row][col]
    end

    def []=(pos,val)
        row,col = pos
        grid[row][col] = val
    end

    def valid_pos?(pos)
        row, col = pos
        pos.all? {|el| el.between?(0,7) }
    end

    def move_piece(start_pos, end_pos)
        start_row, start_col = start_pos
        end_row, end_col = end_pos

        #refer to the specific instance class and using its move to populate slideable/steppable to give us a 2D array of all possible answers. check if end_pos.include?(slideable_array). If yes, then we move position, if not included in the array, we just return an error message.

        if !valid_pos?(start_pos) || !valid_pos?(end_pos)
            raise 'not a valid position'
        end
        if @grid[start_row][start_col].empty? == false
            @grid[start_row][start_col].pos = end_pos
            @grid[start_row][start_col], @grid[end_row][end_col] = @grid[end_row][end_col], @grid[start_row][start_col]
        else
            raise 'there is no piece in there'
        end

        @grid[start_row][start_col] = "_"
    end
end

a = Board.new
rook = a[[0,0]]
a.move_piece([0,0],[4,0])
a.render
