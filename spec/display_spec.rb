require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

require 'digit'

describe Digit do
  
  it "should represent a digit " do
    Digit.new("0").should == [
      [ 0, 1, 0],
      [ 1, 0, 1],
      [ 0, 0, 0],
      [ 1, 0, 1],
      [ 0, 1, 0],
      ]
  end
  
  it "should represent a spacer" do
    Digit.new(:space).should == [
      [ 0, ],
      [ 0, ],
      [ 0, ],
      [ 0, ],
      [ 0, ],
      ]
  end
  
end