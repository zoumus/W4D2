module Slideable

    # DIAGONAL = [[-1,1], [1,1], [1,-1], [-1,-1]]
    # VERTICAL_HORIZONTA; = [[0,1], [0,-1], [-1,0], [1,0]]

    def horizontal
        i, j = self.pos
        num = 1
        arr = []


        while num < 8
            moves = [[i + num, j], [i - num, j], [i, j + num], [i, j - num]]

            moves.each do |ele|
                if board.valid_pos?(ele) && board.[](ele).empty? == false
                    arr << ele
                elsif board.[](ele).color != self.color
                    arr << ele
                    break
                else
                    break
                end
            end
        end

        arr
    end



    def diagonal
        i, j = pos
        num = 1
        arr = []
        while num < 8
            moves = [[i + num, j + num], [i - num, j - num], [i - num, j + num], [i + num, j - num]]

            moves.each do |ele|
                row, col  = ele
               if board.valid_pos?(ele) && board.[](ele).empty? == false
                    arr << ele
               elsif board.[](ele).color != self.color
                    arr << ele
                    break
                else
                    break
                end
            end
        end

        arr
    end
end
