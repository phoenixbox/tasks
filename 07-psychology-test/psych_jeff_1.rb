require 'highline/import'
 
class Questioner
  def ask_question(text, validation = nil)
    validation ||= /.*/
    #puts "Using the validation #{validation}"
    ask text do |q|
      q.validate = validation
    end
  end
 
  def questions
    [
      ["What's your favorite color?", 0],
      ["How old are you?", 0],
      ["Do you think Frank looks funny?", 1, /(obviously|yes|absolutely)/i],
      ["Do you like chips?", 0, /yes/i],
    ].shuffle
  end
 
  def run
    key_result = nil
    key_question = nil
    questions.each do |text, importance, validation|
      if importance > 0
        key_result = ask_question(text, validation)
        key_question = text
      else
        ask_question(text, validation)
      end
    end
 
    say "I knew you'd say '#{ key_result }'' in response to '#{ key_question }'!!!"
  end
end
 
Questioner.new.run
