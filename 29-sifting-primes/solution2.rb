class Sieve
  attr_reader :number, :prime_numbers
  
  def initialize(number)
    @number = number
    @prime_numbers = (2..@number).to_a
    primes
  end

  def primes
    @prime_numbers.each do |i|
    if i <= Math.sqrt(number)
      @prime_numbers.each do |n|
        if i != n && n % i == 0
          @prime_numbers.delete(n)
          end
        end
      end
    end
  end

end

# create the array range of numbers to sift through
# create a method that will process this array and delete the non-primes

# ********** Process **********
#  iterate over the array
#  ask if the block_v is <= to the sqrt of the number ------- only true up to 31
#  if it is then 
