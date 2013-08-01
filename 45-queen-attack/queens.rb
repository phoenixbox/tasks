require 'pry'
class Queens
  attr_reader :white_start, :black_start

  def initialize(positions={white: [0,3], black: [7,3]})
    @white_start = positions[:white]
    @black_start = positions[:black]
    if @white_start == @black_start
      raise ArgumentError, "Queens cannot occupy same space"
    end
  end

  def white
    white_start
  end

  def black
    black_start
  end

  def white_marker
    white_start
  end

  def to_s

  end

  def board
    [
      [0,0,0,0,0,0,0,0],
    ]
  end

end