class WordProblem
  attr_reader :matches

  def initialize(input)
    @matches = input.match(/What is (-?\d*) plus (-?\d*)/)
  end

  def answer
    first_addend = matches[1].to_i
    second_addend = matches[2].to_i
    first_addend + second_addend
  end

end