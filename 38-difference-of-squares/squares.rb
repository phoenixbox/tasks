class Squares
  attr_reader :number
  def initialize(number)
    @number = number
  end

  def square_of_sums
    sum = 0
    1.upto(number) {|n| sum+=n}
    sum**2
  end

  def sum_of_squares
    sum=0
    1.upto(number) {|n| sum+=n**2}
    sum
  end

  def difference
    square_of_sums - sum_of_squares
  end
end