require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../lib/lcd')

describe Lcd do
  context "when first created" do
    it "should have input" do
      lcd = Lcd.new("1")
      lcd.input.should == "1"
    end
    
    it "should have scale" do
      lcd = Lcd.new("1", 3)
      lcd.scale.should == 3
    end
  end
  
  it "should have a NUMBERS constant" do
    Lcd::NUMBERS.should include <<-EOS
   
  |
   
  |
   
EOS
  end
  
  describe "convert" do
    describe "passed 1 as an integer" do
      it "outputs correctly" do
        Lcd.new("1").to_s.should == <<-EOS
    
   |
   |
    
   |
   |
    
EOS
      end
    end
    it "should convert eight" do
      Lcd.new("8").to_s.should == <<-EOS
 -- 
|  |
|  |
 -- 
|  |
|  |
 -- 
EOS
    end
    
    it "should convert 18" do
      Lcd.new("18").to_s.should == <<-EOS
      -- 
   | |  |
   | |  |
      -- 
   | |  |
   | |  |
      -- 
EOS
    end    
    
    it "should convert 18 with scale of 1" do
      Lcd.new("18", 1).to_s.should ==  <<-EOS
     - 
  | | |
     - 
  | | |
     - 
EOS
    end
  end
end