<<<<<<< HEAD
# Each letter has a value
# Input a word
# Split that word into parts

input = gets.chomp
word = input.split.upcase

cabbage = ['c', 'a', 'b', 'b', 'a', 'g', 'e']

# Need to match the index to their value


# Now I have an array - how do I match the array elements to the hash values

# Have a hash of key -> value pairs {'A' => 1, 'E' => 1 etc.}
# Definitely too much duplication

# Is there a shorthand hash syntax where I can set the same value to a variety of keys?

# Need to match input array to hash keys and pull out there values and add then
#   sum input[0..-1]


HOW????!!


Class Scrabble

  def initialize

  end

  def values
    '1' => %W(A E I O U L N R S T)
    1_value = %W(A E I O U L N R S T)
    h1 = {'A' => 1, 'E' => 1, 'I' => 1, 'O' => 1, 'U' => 1, 'L' => 1, 'N' => 1, 'R' => 1, 'S' => 1, 'T' => 1}

    # if cabbage[0..-1] matches any of the hash elements then take their values and sum them

    2_value = %W(D G)

    3_value = %W(B C M P)
    3_value =  []

    4_value = %W(F H V W Y)
    5_value = %W(K)
    8_value = %W(J X)
    10_value = %W(Q Z)
  end

end

=======
class Scrabble
  VALUES = { 
      "A, E, I, O, U, L, N, R, S, T" => 1,
      "D, G" => 2,
      "B, C, M, P" => 3,
      "F, H, V, W, Y" => 4,
      "K" => 5,
      "J, X" => 8,
      "Q, Z" => 10
  }

  def self.score(input)
    input.upcase.split("").map{|letter| lookup(letter)}.inject(0, :+)
  end

  def self.lookup(letter)
    VALUES.find{|key, value| key.include?(letter)}[1]
  end
end
>>>>>>> 7f90f1f2156bc6c56cb22ffba06880fe796a28ed
