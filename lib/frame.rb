class Frame
  attr_accessor :rolls
  
  def initialize
    @rolls = []
  end
  
  def roll(pins)
    @rolls << pins
  end
  
  def completed?
    @rolls.size == 2 || @rolls.first == 10
  end
  
  def score
    the_score = @rolls.inject(0) {|sum, n| sum + n}
    if completed? && the_score != 10
      the_score
    else
      nil
    end
  end
end