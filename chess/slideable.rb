module Slideable

    # DIAGONAL = [[-1,1], [1,1], [1,-1], [-1,-1]]
    # VERTICAL_HORIZONTA; = [[0,1], [0,-1], [-1,0], [1,0]]

    def horizontal
        i, j = pos
        num = 1
        arr = []
        positions = possible_pos
        while num < 8
            moves = [[i + num, j], [i - num, j], [i, j + num], [i, j - num]]
            arr.concat(moves.select { |ele| positions.include?(ele) } )
            num += 1
        end
        return arr
    end

    def diagonal
        i, j = pos
        num = 1
        arr = []
        positions = possible_pos
        while num < 8
            moves = [[i + num, j + num], [i - num, j - num], [i - num, j + num], [i + num, j - num]]
            arr.concat(moves.select { |ele| positions.include?(ele) } )
            num += 1
        end
        return arr
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
