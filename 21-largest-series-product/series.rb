class Series
  attr_reader :digits

  def initialize(string)
    @digits = string.split("").map(&:to_i)
  end

  def slices(i)
    @digits.each_slice(2).to_a
  end

end