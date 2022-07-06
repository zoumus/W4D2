module Steppable

    def step(start_pos, end_pos)
        start_row, start_col = start_pos
        end_row, end_col = end_pos

        if possible_pos.include?(@grid[start_row][start_col]) && possible_pos.include?(@grid[end_row][end_col])
            if (board.[]([i, j]).is_a?(NullPiece) || board.[]([i, j]).color != self.color)
                arr << ele
            end
        
    
        
        
        
        # king_moves = [[i, j + num], [i + num, j + num], [i + num, j],[i + num,j - num],[i - num, j], [i - num,j - num],[i - num, j],[i - num, j + num]]
        # knight_moves = [[1, 2], [2, 1], [-1, 2], [2, -1], [1, -2], [-1, -2], [-2, -1], [-2, 1]]

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