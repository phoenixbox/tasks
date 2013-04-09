class Scrabble
  
  def self.score(word)
    word.downcase.chars.inject(0) do |sum, letter|
      sum + value(letter)
    end
  end

  def self.score(word)
    word.downcase.chars.inject(0) do |sum, letter|
      sum +value(letter)
    end

# Iterate over values hash and return the point associated with the letter
  def self.value(letter)
    values.each do |key, points|
       return key if points.include?(letter)
    end
  end

def self.value(letter)
  values.each do |points, letters|
    return points if letters.inlude?(letter)
  end
end
  def self.value(letter)
    values.each do |point, letters|
      return point if letters.include?(letter)
    end

  def self.score(word)
    word.downcase.chars.inject(0) do |sum, value|
      sum + value(letter)
    end

      

  def self.valuez
    x = {
      1 => %w(a e i o u l n r s t),
      2 => %w(d g),
      3 => %w(b c m p),
      4 => %w(f h v w y),
      5 => %w(k),
      8 => %w(j x),
      10 => %w(q z)
    }
    puts x
  end

  def self.values
    {
      1 => %w(a e i o u l n r s t),
      2 => %w(d g),
      3 => %w(b c m p),
      4 => %w(f h v w y),
      5 => %w(k),
      8 => %w(j x),
      10 => %w(q z)
    }
  end

end
puts Scrabble.valuez
puts Scrabble.value("z")
puts "*******************************"
puts Scrabble.score("banana")


def self.value(letter)
  values.each do |point, letters|
    return point if letters.include?(letter)
  end
end

def self.value(letter)
  # iterate over the values hash
  values.each do |point, letters|
    return point if letters.include?(letter)
  end
end

def self.value(letter)
  values.each do |point, letter|
    return key if letters.include?(letter)
  end
end

def self.values
  {
    1=> %w(a b c d e f g)
    2=> %w(h i j k l m n)
    3=> %(o p q r s t u v)
  }
end

def self.value(letter)
  values.each do |point, letters|
    return point if letters.include?(letter)
  end
end

def self.value(letter)
  values.each do |point, letters|
    return point if letters.inlcude?(letter)
  end
end

def self.score(word)
   word.downcase.char.inject(0) do |sum, letter|
    sum + value(letter)
  end
end

def self.score(word)
  word.downcase.chars.inject(0) do |sum, letter|
    sum + value(letter)
  end
end

def self.values
  # hash shorthand 1=> %(a b c)
end

def self.value(letter)
  values.each do |point, letters|
    return point if letters.include?(letter)
  end
end

def self.score(word)
  word.downcase.chars.inject(0) do |sum, letter|
  sum + value(letter)
end

def values
  {}
end

def self.value(letter)
  values.each do |point, letters|
    return point if letters.inlcude?(letter)
  end
end

def score(word)
  word.downcase.chars.inject(0) do |sum, letter|
    sum + value(letter)
  end
end

end



end

  # pull in the number key and the letters
  # return the point key if the letter passed is in the letter values 
  # end


