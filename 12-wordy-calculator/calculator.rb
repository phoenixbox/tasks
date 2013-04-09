class Calculator
  
  def ask(input)
    # input = what is 1 plus 2?

    parts = input.split
    first_addend = parts[2].to_i
    second_addend = parts[4].to_i
    first_addend + second_addend

    # What is 123 plus 4567?
    matches = input.match(/What is (\d*) plus (\d*)/)
    first_addend = matches[1]
    second_addend = matches[2] 

  end

end

def ask(input)
  # parts = input.split
  # first_addend = parts[2].to_i
  # second_addend = parts[4].to_i
  # first_addend + second_addend

  matches = input.match(/What is (-?\d*) plus (-?\d*)/)
  first_addend = matches[1].to_i
  second_addend = matches[2].to_i
  first_addend + second_addend
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
