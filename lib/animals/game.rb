module Animals
  require "consoleUI"
  class Game
    def initialize
      @ui = ConsoleUI
    end
    
    def start
      @ui.say("Think of an animal...")
    end
  end
end
