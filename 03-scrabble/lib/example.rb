class Scrabble
 
  def self.score(word)
    word.downcase.chars.inject(0) do |sum, letter|
      sum + value(letter)
    end
  end

  def self.value(letter)
    values.each do |key, points|
      return key if points.include?(letter)
    end
  end

  def self.values
    {
      1 => %w(a e i o u l n r s t),
      2 => %w(d g),
      3 => %w(b c m p),
      4 => %w(f h v w y),
      5 => %w(k),
      8 => %w(j x),
      10 => %w(q z),
    }
  end
end
# **************************************************
# class Scrabble
#   VALUES = { 
#       "A, E, I, O, U, L, N, R, S, T" => 1,
#       "D, G" => 2,
#       "B, C, M, P" => 3,
#       "F, H, V, W, Y" => 4,
#       "K" => 5,
#       "J, X" => 8,
#       "Q, Z" => 10
#   }

#   def self.score(input)
#     input.upcase.split("").map{|letter| lookup(letter)}.inject(0, :+)
#   end

#   def self.lookup(letter)
#     VALUES.find{|key, value| key.include?(letter)}[1]
#   end
# end

