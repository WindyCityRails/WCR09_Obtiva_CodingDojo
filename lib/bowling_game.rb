require 'frame'
class BowlingGame
  attr_accessor :frames
  
  def initialize
    @frames = []
  end

  def roll(pins)
    if @frames.empty? || @frames.last.completed?
      frame = Frame.new
      frame.roll(pins)
      @frames << frame
    else
      @frames.last.roll(pins)
    end
  end
  
  def running_score
    @frames.inject(0) {|sum, frame| sum + frame.score.to_i}
  end
  
end