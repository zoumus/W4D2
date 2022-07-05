class Board

    attr_accessor :grid

    def initialize
        @grid = Array.new(8) { Array.new(8) }
        @piece = Nullpiece.instance
    end

    def [](pos)
        row, col = pos
        grid[row][col]
    end

    def move_piece(start_pos, end_pos)
        start_row, start_col = start_pos
        end_row, end_col = end_pos
        
    end

end