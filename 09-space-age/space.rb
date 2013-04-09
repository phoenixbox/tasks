# input is an a value in seconds
# Convert to earth years

# input = gets.chomp

# input = 270921
# mm, ss = age.divmod(60)            #=> [4515, 21]
# hh, mm = mm.divmod(60)           #=> [75, 15]
# dd, hh = hh.divmod(24)           #=> [3, 3]
# year_convert = 

# puts "%d days, %d hours, %d minutes and %d seconds" % [dd, hh, mm, ss]
# store this value and then put it over 365 days
# earth_years = age/3.15569**7

1031000000

class Old

  def year_seconds
    3.15569**7
  end

  def convert(input)
    earth_years = input/(year_seconds)
    earth_years.round(2)
    puts earth_years.class
    puts "You are #{earth_years} years old"
    # mm, ss = input.divmod(60)
    # hh, mm = mm.divmod(60)           
    # dd, hh = hh.divmod(24)
    # age = [dd, hh, mm, ss]
  end

end

puts "How old are you in seconds?"
how_old = Old.new

input = gets.chomp.to_i
how_old.convert(input)

# earth_years = age/3.15569**7


