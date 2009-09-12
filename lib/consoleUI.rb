module ConsoleUI
  def self.say(text)
    puts text
  end
  
  def self.ask(question)
    puts question
    gets.chomp
  end
  
  def self.yes?(question)
    # TODO better validation for answer
    ans = ask("#{question} (y or n)")
    return (ans == 'y') ? true : false 
  end
  
end