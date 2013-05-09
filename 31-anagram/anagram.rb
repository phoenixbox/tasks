class Anagram
  attr_reader :word, :anagrams

  def initialize(word)
    @word = word
    @anagrams = []
  end

  def match(matches)
    matches.each do |match|
      if match.length == word.length
        check_for_anagram(match)
      end
    end
    @anagrams
  end

  def check_for_anagram(match)
    match_letters = match.chars.sort
    word_letters = word.chars.sort

    if word_letters.eql?(match_letters)
      @anagrams << match
    end
  end

end

# need to split - sort - match by elements