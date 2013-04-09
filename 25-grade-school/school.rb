class School
  attr_reader :db

  def initialize(school)
    @school = school
    @db = Hash.new([])
  end

# Create a hash with a default value of an empty array
# Need to catch the value with the plus equals
# Otherwise the value would not persist when we shovel
   # @db[position] << [name]

  def add(name, position)
   @db[position] = grade[position] + [name]
  end

  def grade(level)
    @db[level]
  end

# Problem with ability to sort array
  def sort
    Hash.new(@db.sort_by{|key, value| keys})
  end
  
end