# # Gigasecond

# A gigasecond is one billion seconds. Figure out when you turn(ed) 1 gigasecond old.

# ## Source
# Chapter 9 in Chris Pine's online [Learn to Program](http://pine.fm/LearnToProgram/?Chapter=09) tutorial.

# Calculate the time difference between date born and Time.new
# Convert this time into seconds
# time = time_in_seconds/gigasecond
# 30/Nov/2009 16:29:30 +0100.
require 'time'

class Giga

  def calculate(input)
    t1 = Time.parse(input)
  end

  def time_now
    t2 = Time.now
  end

  def difference
    diff = t2-t1
    diff.to_i
  end

  def gigasecond
    1*(10**9)
  end

  def my_age
    difference/gigasecond
  end

end

Puts: "How old are you? please use the format MM/DD/YYYY"
age = Giga.new
while true
  input = gets.chomp
  age.calculate(input)
end
end
puts age.my_age


# puts "Say something to grandma son"
# grandma = Grandma.new
#   while true
#     input = gets.chomp
#     grandma.chat(input)
#   end
# end

