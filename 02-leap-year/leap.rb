# Read in a year = intput = get.chomp
# Check if it is a leap year
# Evenly divisible by 4, 4 % == 0
# skip the leap year when year evenly divisible by 100, year % 100 == 0

# Conditions
# year % 4 == 0
# skip when year % 100 == 0 && year % 100 == 0

# So I pass in a year as a parameter to the method
# The method executes to check the conditions

class Year

  def initialize(year)
    @year = year
  end

  def leap?
    print "Please enter a year to check its leapness!"
    year = gets.chomp

    leap_year_check(year)
  end

  def leap_year_check(year)
    if year % 4 == 0
      if year % 100 == 0 && year % 400 == 0
        puts "its not a leap year!"
        else
        puts "its a leap year!"
      end
    else
      puts "Its not a leap year!"
    end 
  end

end

Year.new.leap?

# create a method for each divisible by condition



