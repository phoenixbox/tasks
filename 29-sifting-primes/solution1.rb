class Sieve
  attr_reader :number, :prime_numbers
  def initialize(number)
    @number = number
    @prime_numbers = (2..@number).to_a
    remove_non_prime
  end

  def remove_non_prime
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
#  ask if the eleent