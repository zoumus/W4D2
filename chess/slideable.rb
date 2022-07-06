module Slideable

    # DIAGONAL = [[-1,1], [1,1], [1,-1], [-1,-1]]
    # VERTICAL_HORIZONTA; = [[0,1], [0,-1], [-1,0], [1,0]]

    def horizontal
        i, j = pos 
        num = 1
        arr = []
        while num < 8
            moves = [[i + num, j], [i - num, j], [i, j + num], [i, j - num]]
            arr.concat(moves.select { |ele| valid_pos?(ele) } )
            num += 1
        end
        return arr
    end

    def diagonal
        i, j = pos 
        num = 1
        arr = []
        while num < 8
            moves = [[i + num, j + num], [i - num, j - num], [i - num, j + num], [i + num, j - num]]
            arr.concat(moves.select { |ele| valid_pos?(ele) } )
            num += 1
        end
        return arr
    end

end