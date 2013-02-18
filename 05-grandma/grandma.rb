class Grandma

  def chat(input)
    if input == "BYE"
      exit
    else
    puts response(input)
    end
  end

  def huh
    puts "HUH?!  SPEAK UP, SONNY!" 
  end

  def another
    puts "\nSay something else to Grandma!"
  end

  def year
    r = Random.new
    r.rand(1930..1950)
  end

  def crazy
    puts "NO, NOT SINCE #{year}!"
    another
  end

  def response(input)
    if input == input.upcase
      crazy
    else
      huh
      another
  end

end

puts "Say something to grandma son"
grandma = Grandma.new
  while true
    input = gets.chomp
    grandma.chat(input)
  end
end

