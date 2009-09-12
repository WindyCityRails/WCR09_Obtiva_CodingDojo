class Frame
  VALID_SCORE_RANGE = 0..10
  
  def initialize(roll_one, roll_two)
    @roll_one = roll_one
    @roll_two = roll_two
    
    unless [ @roll_one, @roll_two, score ].all? { |n| VALID_SCORE_RANGE.include?(n) }
      raise ArgumentError, "given scores must be at least zero and total less than ten"
    end
  end
  
  def score
   @roll_one + @roll_two
  end
  
  def scoreable?
    score < 10
  end
  
end