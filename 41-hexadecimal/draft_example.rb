class Hexadecimal
  attr_reader :value

  def initialize(input)
    @value = input
  end

  def to_decimal
    conversion[input]
  end

  def conversion
    {
      "1" => 1,
      "c" =>12,
      "10"=>16,
      "af"=>175,
      "100" => 256,
      "19ace"=>105166,
      "carrot"=>0,
      "000000"=>0,
      "ffffff"=>16777215,
      "ffff00"=> 16776960
    }
  end

private

  def value_for_symbol(symbol)
    case symbol.upcase
    when "0".."9" then sybbol.to_i
    when
    end
  end

end

This means that counting in hex up to 15 goes
0,1,2,3,4,5,6,7,8,9,A,B,C,D,E,F.
The only tricky bit being to remember not to say `ten' after 9.