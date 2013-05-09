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
    square_of_sums - sum_of_squares
  end
end