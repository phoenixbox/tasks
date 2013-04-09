class Binary
  attr_reader :binary
  def initialize(param)
    @binary = param
  end

  def to_decimal
    reverse_digits = binary.split("").collect{|d| d.to_i}.reverse
    total = 0
    reverse_digits.each_with_index do |digit, n| 
      total += digit * 2**n
    end
    return total
  end
end