require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'bowling_game'
describe BowlingGame do
  before :each do
    @game = BowlingGame.new
  end
  describe "first roll" do
    it "adds a roll to the first frame" do
      @game.roll(6)
      @game.running_score.should == 0
    end
  end
  
  describe "second roll" do
    before :each do
      @game.roll(6)
    end
    it "adds a second roll to the frame" do
      @game.roll(2)
      @game.running_score.should == 8
    end
  end
  
  describe "third roll" do
    before :each do
      @game.roll(7)
    end
    it "adds a roll to the second frame" do
    end
  end
end