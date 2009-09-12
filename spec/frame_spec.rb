require File.dirname(__FILE__) + '/spec_helper'

describe Frame do
  describe "initialize" do
    it "should raise ArgumentError if rolls are not numeric" do
      lambda { Frame.new("foo", "bar") }.should raise_error(ArgumentError)
    end
    
    it "should raise ArgumentError if the total input is greater than ten" do
      lambda { Frame.new(5, 6) }.should raise_error(ArgumentError)
      lambda { Frame.new(12, 0) }.should raise_error(ArgumentError)
      lambda { Frame.new(0, 12) }.should raise_error(ArgumentError)
    end
    
    it "should raise ArgumentError if any input is less than zero" do
      lambda { Frame.new(-1, 5) }.should raise_error(ArgumentError)
      lambda { Frame.new(8, -2) }.should raise_error(ArgumentError)
    end
  end
  
  describe "score" do
    it "should have a score of 0 if two zeroes are rolled" do
      Frame.new(0, 0).score.should == 0
    end

    it "should have a score of 1 if the first roll is 0 and the second roll is 1" do
      Frame.new(0, 1).score.should == 1
    end

    it "should add both scores together" do
      Frame.new(5, 4).score.should == 9
    end
  end
  
  describe "scoreable?" do
    it "should return true if the total score is less than ten" do
      Frame.new(5, 4).should be_scoreable
    end
    
    it "should return false if the total score adds up to ten" do
      Frame.new(5, 5).should_not be_scoreable
      Frame.new(0, 10).should_not be_scoreable
    end
  end
end