class WordProblem

  #
  def initialize(input)
    @matches = input.match(/What is (-?\d*) (plus|minus) (-?\d*)(plus(-?\d))?\?/)
  end

  def answer
   @matches ||= question
  end

  def operation

  end
end

# * allows for more than one
# optionally inlcude negative with the ? mark
# use the send method
# also trial the scen method
# optional group for when a chained solution is required