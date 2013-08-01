require 'pry'

class Matrix
  attr_reader :matrix, :length

  def initialize(matrix)
    @matrix = matrix.split(" ")
    @length = @matrix.count
  end

  def rows
    if matrix.count > 4
      over_four = matrix.count/3
      strings = matrix.each_slice(over_four).collect{|a| a}      
    else
      under_four = matrix.count/2
      strings = matrix.each_slice(under_four).collect{|a| a}
    end
    processed = strings.map do |e|
      e.map do |s|
        s.to_i
      end
    end
  end

end
