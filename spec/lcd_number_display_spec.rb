require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require 'lcd_number_display'

describe LCDNumberDisplay do
  
  # it "should validate the arguments"
  # 
  # it "should scale to the -s parameter" 
  # 
  it "should display a digit" do
    LCDNumberDisplay.output(0).should == <<-eot
 - 
| |
   
| |
 - 
eot
  end
  
  # it "should display the digits the user supplied at the command line"
  # 
  # it "should separate each digit by one space"
  # 
  
end