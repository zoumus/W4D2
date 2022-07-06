

class Piece

    include Slideable
    include Steppable

    attr_reader = :color, :board, :pos

    def initialize(color,board,pos)
        @color = color
        @board = board
        @pos = []
    end

    def to_s
        if symbol == :ki
            if color == :white
                return "♔"
            else
                return "♚"
            end
        elsif symbol == :bi
            if color == :white
                return "♗"
            else
                return "♝"
            end
        elsif symbol == :Kn
            if color == :white
                return "♘"
            else
                return "♞"
            end
        elsif symbol == :qu
            if color == :white
                return "♕"
            else
                return "♛"
            end
        elsif symbol == :ro
            if color == :white
                return "♖"
            else
                return "♜"
            end
        elsif symbol == :pa
            if color == :white
                return "♙"
            else
                return "♟︎"
            end
        end
    end


    end

    def empty?
        return false
    end

    def pos=(val)

    end

    def symbol

    end
end
