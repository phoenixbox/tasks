class Sieve

  attr_reader :values

  def initialize(max)
    @values = (2..max).to_a
  end

  def primes
    values.each do |value|
      remove_multiples_of(value)
    end

    return values
  end

  def remove_multiples_of(value)
    # @values = [2,3,4,5,6,7,8,9,10]

    # value = 2
    # process of true/false elimination returns an array with the select method
    @values = values.select{|v| (v % value != 0) || v == value}
    # once the cycle of 2 is done then rmove_multiples_of is passed back to primes
    # use the result of the 2 process array for the 3 time thru
    # 2 thru - result 23579
    # 3 thru - result 2357
    # 

  end

end