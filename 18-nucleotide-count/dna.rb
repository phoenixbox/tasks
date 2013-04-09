class DNA

  attr_reader :string

  def initialize(string)
    @string = string
  end

  def count(string)
    0
  end

  def process
    up = @string.upcase
    up.split("")
  end

  def nucleotide_counts
    process.collect do |letter|
      nucleotide_symbols.key(letter)
    end
  end

  def empty_nuc
    {'A' => 0, 'T' => 0, 'G' => 0, 'C' => 0}
  end

  def nucleotide_symbols
    {'A' => 6, 'T' => 6, 'G' => 5, 'C' => 4}
  end

end