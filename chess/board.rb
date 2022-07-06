require_relative "null_piece.rb"
class Board
    # include "singleton"

    attr_accessor :grid

    def initialize
        @grid = Array.new(8) { Array.new(8) }
        # @piece = NullPiece.instance
    end

    def make_grid
        # first = [1, Knight.new, Bishop.new, King.new, Queen.new, Bishop.new, Knight.new, Rook.new ]
        # second = [2, Pawn.new, Pawn.new, Pawn.new, Pawn.new, Pawn.new, Pawn.new, Pawn.new]
        grid[0][0] = Rook.new(white, self, [0,0])
        grid[0][1] = Knight.new(white, self, [0,1])
        grid[0][2] = Bishop.new(white, self, [0,2])
        grid[0][3] = King.new(white, self, [0,3])
        grid[0][4] = Queen.new(white, self, [0,4])
        grid[0][5] = Bishop.new(white, self, [0,5])
        grid[0][6] = Knight.new(white, self, [0,6])
        grid[0][7] = Rook.new(white, self, [0,7])

        grid[1][0] = Pawn.new(white, self, [1,0])
        grid[1][1] = Pawn.new(white, self, [1,1])
        grid[1][2] = Pawn.new(white, self, [1,2])
        grid[1][3] = Pawn.new(white, self, [1,3])
        grid[1][4] = Pawn.new(white, self, [1,4])
        grid[1][5] = Pawn.new(white, self, [1,5])
        grid[1][6] = Pawn.new(white, self, [1,6])
        grid[1][7] = Rook.new(white, self, [1,7])


        grid[7][0] = Rook.new(black, self, [0,0])
        grid[7][1] = Knight.new(black, self, [0,1])
        grid[7][2] = Bishop.new(black, self, [0,2])
        grid[7][3] = King.new(black, self, [0,3])
        grid[7][4] = Queen.new(black, self, [0,4])
        grid[7][5] = Bishop.new(black, self, [0,5])
        grid[7][6] = Knight.new(black, self, [0,6])
        grid[7][7] = Rook.new(black, self, [0,7])

        grid[0][0] = Rook.new(black, self, [0,0])
        grid[0][1] = Knight.new(black, self, [0,1])
        grid[0][2] = Bishop.new(black, self, [0,2])
        grid[0][3] = King.new(black, self, [0,3])
        grid[0][4] = Queen.new(black, self, [0,4])
        grid[0][5] = Bishop.new(black, self, [0,5])
        grid[0][6] = Knight.new(black, self, [0,6])
        grid[0][7] = Rook.new(black, self, [0,7])







    end

    def render
        @grid.each do |arr|
            p arr
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
    end

    def add_piece(piece,pos)
    end

end

a = Board.new

a.render
