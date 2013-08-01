class Element
  attr_accessor :next
  attr_reader :datum

  def initialize(datum)
    @datum = datum
  end

end

def linked_list(elements)
  Element.new(elements[0])
end