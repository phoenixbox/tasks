class Allergies
  attr_reader :score

  def initialize(score)
    @score = score
  end
  # if the lookup returns nil then
  # if the number is == to the sum of a combo of the keys?
  # eggs and peanuts keys summed are 3

  # allergy & ask question
  # comparison of 1 & 1
  # if true && true
  # bit comparison operator
  # only looking for cases where there is an overlap - bitmasking

  # set intersection [ :a, :b ] & [ :c ]
  
  def list
    current_list = []

    allergens.each_with_index do |allergen, index|
      if score & (2 ** index) > 0
        current_list << allergen
      end
    end

    # if score & (2**0) > 0
    #   current_list << allergens[0]
    # end

    # if score & (2**1) > 0
    #   current_list << allergens[1]
    # end

    current_list
  end

  # hash key lookup
  def allergens
    ["eggs", "peanuts"]
  end

end