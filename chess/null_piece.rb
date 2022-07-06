require "singleton"
require_relative "piece.rb"
class NullPiece < Piece

    def empty?
        return true
    end
end
