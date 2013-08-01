class Hexadecimal
  attr_reader :value
 
  def initialize(input)
    @value = input
  end
 
  def to_decimal
    begin
      digits = value.split('')
      values = []
      digits.reverse.each_with_index do |digit, position| 
        values << value_for_symbol_at_position(digit, position)
      end
      values.inject(:+)
    rescue InvalidHexCharacter => e
      0
    end
  end
 
private
 
  def value_for_symbol_at_position(symbol, position)
    value_for_symbol(symbol) * (16 ** position)
  end
  
  def value_for_symbol(symbol)
    case symbol.upcase
    when "0".."9" then symbol.to_i
    when "A" then 10
    when "B" then 11
    when "C" then 12
    when "D" then 13
    when "E" then 14
    when "F" then 15
    else
        raise InvalidHexCharacter.new(symbol)
    end
  end
end
 
class InvalidHexCharacter < ArgumentError; end