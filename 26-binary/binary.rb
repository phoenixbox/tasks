class Binary
  
  attr_reader :binary
  
  def initialize(string)
    @binary = string
  end

  def to_decimal
    if binary == "10"
      2
    else
      1
    end 
    digits = binary.split("")
    integers = digits.collect{|d| d.to_i}.reverse
    # why reverse - read the string right to left so flip it and now when its read it is read left to right but really becasue its flipped its right to left
    total = 0
    # ********** First Implementation **********
    # total += integers[0].to_2*1
    # total += integers[1].to_2*0
    # total += integers[2].to_2*2
    # total += integers[3].to_2*3
    # integers[n].to_i*2**n
    # ********** Second Implementation **********
    integers.each_with_index{|num, n| total+= integers[n] * 2**n}

    return total

  end

end