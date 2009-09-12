require "consoleUI"
class Quiz
  attr_accessor :ui
  
  def initialize
    @ui = ConsoleUI.new
  end
  
#  def decision_tree_start=(question_or_answer)
#    @start = question_or_answer
#  end  
  
  def start
    @ui.say("Think of an animal...")
    @ui.ask("Is it an elephant?  (y or n)")
    @ui.say("I win!  Pretty smart, aren't I?")
    #ask(@start)
  end
  
  # def ask(question)
  #   if question.kind_of?(Question)
  #     @ui.say(question.text)
  #   elsif question.kind_of?(Answer)
  #     @ui.say("Is it a #{question.name}? (y or n)")
  #   else 
  #     raise 'wrong node type!'
  #   end
  # end   
  
  
end
