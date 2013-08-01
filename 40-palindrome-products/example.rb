class Palindromes
  attr_reader :max_factor  # => nil

  def initialize(max_factor)
    @max_factor = max_factor[:max_factor]
  end                                # => nil

  def generate
    array = (1..9).collect do |n|
      (n * max_factor).to_s
    end
  end           # => nil

  def largest
    max_factor
  end          # => nil

  def value
    max_factor
  end        # => nil

end  # => nil

# 1-9 array = [9, 18, 27, 36, 45, 54, 63, 72, 81]

# array.collect do |e|
#    e.to_s
# end

# ["9", "18", "27", "36", "45", "54", "63", "72", "81"]

string_array.each do |string|
  if string.reverse == string
    result_array << string
 end
end
