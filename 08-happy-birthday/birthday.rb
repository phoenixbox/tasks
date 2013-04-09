# asks a person how old they are
# take input and pass to a method
# Have variables that contain three pieces of info
# 1998, November, 5th
# Downcase the month
# Strip the chars out of the number entry - regexp /^[0-9]/

# Create a date object
# Then have acecs to the date mehods

# Send the Date.today to the intialiaze method
# !!DANGER!! we can have random errors that occure with date discrepancies

class Birthday

  def (input)

  end

  def age
    now = Time.now.utc.to_date
    now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def age(year, month, day)

  end

end

person = Birthday.new
puts "what year were you born in?"
year = gets.chomp.strip
puts "what month were you born in?"
month = gets.chomp.strip.downcase
puts "what day were you born in?"
day = gets.chomp.strip(/^[0-9]/)

# join them together with .join?? what would that do?
