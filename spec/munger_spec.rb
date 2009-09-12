require File.dirname(__FILE__) + '/spec_helper'

describe Munger do
  describe "initialization" do
    it "should have an input" do
      munger = Munger.new('input')
      munger.input.should == 'input'
    end
  end
  
  describe "munging" do
    before(:each) do
      @munger = Munger.new("Hello world")
    end
    
    it "should munge a string" do
      @munger.munge.should_not == "Hello world"
    end
    
    
    it "should keep the first and last letters of words" do
      @munger.munge.should match(/H\w\w\wo w\w\w\wd/)
    end
  end
end