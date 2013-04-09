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

  def input_array
    string = number.to_s
    string.split("").collect(&:to_i)
  end

  def tens
    d_string = decades[input_array[0]]
    s_string = small[input_array[1]]
    "#{d_string} #{s_string}"
  end

  def hundreds
    if input_array[1] == 0 && input_array[2] == 0 
        s_string = small[input_array[0]]
        "#{s_string} hundred"
      elsif
        input_array[2] == 0
        s_string = small[input_array[0]]
        d_string = decades[input_array[1]]
        "#{s_string} hundred #{d_string}"
      else
        s_string = small[input_array[0]]
        d_string = decades[input_array[1]]
        last_string = small[input_array[2]]
        "#{s_string} hundred #{d_string}-#{last_string}"
      end
  end

  def thousands
    if input_array[1] == 0 && input_array[2] == 0 && input_array[3] == 0
      s_string = small[input_array[0]]
      "#{s_string} thousand"
    else
      input_array[2]==0 && input_array[3]==0
      s_string = small[input_array[0]]
      d_string = small[input_array[1]]
      "#{s_string} thousand #{d_string} hundred"
    end
  end

  def in_english
    if number < 19 
      small[number]
    elsif number < 100
      tens
    elsif number < 1000
      hundreds
    else number < 10000
      thousands
    end
  end

end