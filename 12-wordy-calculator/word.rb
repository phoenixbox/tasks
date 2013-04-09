class Calculator
  attr_accessor :calculator

  def initialize
    @calculator
  end
  
  def ask
    puts "what would you like to add?"
    input = gets.chomp
    no_question = x.gsub(/[?]/, "")
    words = no_question.split
    index(words)
  end

  def index(word_array)


  end

end

# > "What is 5 plus 13?""
# > "What is #{num_1} plus @{num_2}?""
# > Plus == "+"

x.gsub(/[^a-zA-Z0-9]/, "")
x.gsub(/[^0-9]/, "")
x.gsub(/[?]/, "")

no_question = x.gsub(/[?]/, "")
no_question.split
