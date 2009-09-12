require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'frame'
describe Frame do
  before :each do
    @frame = Frame.new
  end
  describe "first roll" do
    describe "without a strike" do
      before :each do
        @frame.roll(9)
      end
      it "is not completed" do
        @frame.should_not be_completed
      end
      
      it "does not have a score" do
        @frame.score.should be_nil
      end
    end
    describe "with a strike" do
      before :each do
        @frame.roll(10)
      end
      it "is completed" do
        @frame.should be_completed
      end
      
      it "does not have a score" do
        @frame.score.should be_nil
      end
    end
  end
  describe "second roll" do
    before :each do
      @frame.roll(6)
    end
    describe "without a spare" do
      before :each do
        @frame.roll(2)
      end
      it "is completed" do
        @frame.should be_completed
      end
      it "has a score" do
        @frame.score.should == 8
      end
    end

  end
  
end