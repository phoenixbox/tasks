class Scrabble

  attr_reader :input, :word_array

  def initialize(input)
    @input = input
  end

  def letters
    input.downcase.split("")
  end

  def score
    number_array = []
    letters.each do |letter|
      number_array<<values[letter]
    end
    number_array.inject(:+)
  end

  def values
   {"a"=>1,"e"=>1,"i"=>1,"o"=>1,"u"=>1,"l"=>1,
    "n"=>1,"r"=>1,"t"=>1,"d"=>2,"g"=>2,"b"=>3,
    "c"=>3,"m"=>3,"p"=>3,"f"=>4,"h"=>4,"v"=>4,
    "w"=>4,"y"=>4,"k"=>5,"j"=>8,"x"=>8,"q"=>10,"z"=>10}
  end
  

end