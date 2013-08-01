require 'pry'

class Luhn
  attr_reader :input
  def initialize(input)
    @input = input.to_s.split('').reverse
  end

  def check_digit
    integer_array = input.collect{|i|i.to_i%10}
    integer_array.collect{|i|new_array<<(i*2)}
    binding.pry
  end
end