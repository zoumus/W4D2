
module Steppable
    def moves
        new_arr = []
        move_diffs.each do |move|
            i, j = move
            current_x, current_y = self.pos
            new_pos = [current_x + i, current_y + j]
           next if !board.valid_pos?(new_pos)

           if (board.[](new_pos).is_a?(NullPiece) || board.[](new_pos).color != self.color)
                    new_arr << new_pos
            end
        end
        new_arr
    end

    def move_diffs
        raise   NotImplimentedError
    end

end
