class Say

  def initialize(value)
    @value = value
  end

  def in_english
    guard_range  
    if @value > 19
      number_array = @value.to_s.split("")
      if small_numbers[number_array[1].to_i] == "zero"
        decade_string = decades[number_array[0].to_i]
      else
        decade_string = decades[number_array[0].to_i]
        single_string = small_numbers[number_array[1].to_i]
        decade_string + "-#{single_string}"
      end
    else
      small_numbers[@value]
    end
  end

  def tens
    @tens ||= @value / 10
  end

  def ones
    @ones ||= @value % 10
  end

  def say_big_number
    # get the pure decade string value
    # if the ones value is == zero, dont add the hyphen and string value for the ones value to the decade string value
    # else append the hyphen and ones string value to the decade string value
  end

  def guard_range
    unless in_range?
      message = 'Number must be between 0 and 99, inclusive.'
      raise ArgumentError.new(message)
    end
  end

  def in_range?
    @value >= 0 && @value < 100
  end

  def small_numbers
    %w(zero one two three four five
       six seven eight nine ten
       eleven twelve thirteen fourteen fifteen
       sixteen seventeen eighteen nineteen)
  end

  def decades
    [nil, nil] +
    %w(twenty thirty forty fifty
       sixty seventy eighty ninety)
  end

end