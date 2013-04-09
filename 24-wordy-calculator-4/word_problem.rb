class WordProblem
  attr_reader :string
  def initialize(string)
    @string = string.match(/What is (\d*) (plus) (\d*)/)
  end

  def matches
    array = []
    array << string[1].to_i
    array << string[2]
    array << string[3].to_i
    array
  end

  def operators
  end


  def answer
    matches[0]+matches[2]
  end

end