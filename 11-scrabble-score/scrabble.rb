class Scrabble

  def self.score(word)
    word_array = word.downcase.split("")
    word_array.inject(:+)
  end

  def double
    # letter score *2
  end

  def triple
    # letter score *3
  end
  
  def values
    {
    1 => %w(a e i o u l n r s t)
    2 => %w(d g)
    3 => %w(b c m p)
    4 => %w(f h v w y)
    5 => %w(k)
    8 => %w(k x)
    10 => %w(q z)
    }  
  end

end

