class ConsoleUI
  def initialize
    @output = $stdout
    @input = $stdin
  end
  
  attr_reader :output, :input
  
  
  def say(text)
    output.puts text
  end
  
  def ask(question)
    output.puts(question)
    input.gets.chomp
  end
  
  def yes?(question)
    # TODO better validation for answer
    ans = ask("#{question} (y or n)")
    return (ans == 'y') ? true : false 
  end
  
  
end