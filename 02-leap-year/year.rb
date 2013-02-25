class Year

  def initialize(input)
    @value = input
  end

  def leap?
    divisible_by_4 = (@value % 4 == 0)
    divisible_by_100 = (@value % 100 == 0)
    divisible_by_400 = (@value % 400 == 0)
    divisible_by_4 && (!divisible_by_100 || divisible_by_400)
    end
end

  attr_reader :year

  def initialize(number)
    @year = number.to_i
  end

  def leap?
    by4 && (!by100 || by400)
  end

  private

  def by4
    (year % 4) == 0
  end

  def by100
    (year % 100) == 0
  end

  def by400
    (year % 400) == 0
  end

end

