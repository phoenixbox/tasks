class Say
  attr_reader :number, :input_array

  def initialize(number)
    @number = number
  end

   def small
    %w(zero one two three four five
       six seven eight nine ten
       eleven twelve thirteen fourteen fifteen
       sixteen seventeen eighteen nineteen)
  end

  def decades
    %w(nil ten twenty thirty forty fifty sixty seventy eighty ninety)
  end

  def ones
    number % 10
  end

  def tens
    number/10
  end

  def hundreds
    number / 100
  end

  def in_english
    if number < 20
      small[number]
    elsif number < 100
      "#{decades[tens]} #{small[ones]}"
    else number < 1000
     "#{small[hundreds]} hundred " 
    end
  end

end