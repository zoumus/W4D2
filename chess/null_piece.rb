require "singleton"
require_relative "piece.rb"

class NullPiece < Piece
    include Singleton

    def initialize
    end

    def symbol
        :nu
    end

    

    def empty?
        return true
    end
end
