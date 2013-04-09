class Series

  attr_reader :digits

  def initialize(string)
    @digits = string.split("").collect(&:to_i)
  end

  def slices(number)
    slices = []
    digits.count.times do |i|
      slices << digits[i..i+input]
    end
    slices.reject{|i|i.count != input}
  end

  def largest_porduct(input)
    raise ArgumentError if input > digits.count
    slices(input).collect do |set|
      set.inject(:*)
    end.max
  end

end