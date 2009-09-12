class Question
  def initialize(some_text)
    @text = some_text
  end
  
  attr_reader :text, :yes, :no
  
end