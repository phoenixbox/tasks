
# need to loop over an initial beer value of 99
# decrement each time through and store in a new beer variable
# interpolate in string to puts 
# "#{current_beer} bottles of beer on the wall, #{current_beer} of beer.
# Take one down pass it around, #{current_beer-1} bottles of beer on the wall." 
class Beer

# Asterisk means that there doesnt have to be a value passed in
def initialize(*beer)
  @beer = beer
end

# class method
def self.beer_loop
  beer = 99
  loop do
  beer -= 1
  beer
  end
end

def lyrics
  puts "#{current_beer} bottles of beer on the wall, #{current_beer} of beer.
  Take one down pass it around, #{beer_decrement} bottles of beer on the wall.\n" 
end

end

# When we instantiate a new object from the beer class it automatically
# gets set up with the initialize merthod
# In this case there is effectively a writer method for the beer variable

beer = Beer.beer_loop
puts beer
