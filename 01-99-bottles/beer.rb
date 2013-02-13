
# need to loop over an initial beer value of 99
# decrement each time through and store in a new beer variable
# interpolate in string to puts 
# "#{current_beer} bottles of beer on the wall, #{current_beer} of beer.
# Take one down pass it around, #{current_beer-1} bottles of beer on the wall." 
class Beer

def initialize(*beer)
  @beer = beer
end

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

Beer.beer_loop
