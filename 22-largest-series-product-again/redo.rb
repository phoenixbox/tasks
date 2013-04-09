class Series

  attr_reader :digits

  def initialize(string)
    @digits = string.split("").collect(&:to_i)
  end

  def slices(number)
    array = []
    digits.count.times do |i|
      array << digits[i..i+number]
    end
    array.reject{|i|i.count != count}
  end



end