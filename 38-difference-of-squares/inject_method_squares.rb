class Squares
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def square_of_sums
    (1..number).inject(:+) ** 2
  end

  def sum_of_squares
    squares = (1..number).collect{|i| i**2}
    squares.inject(:+)
  end

  def difference
    (sum_of_squares - square_of_sums).abs
  end
end
