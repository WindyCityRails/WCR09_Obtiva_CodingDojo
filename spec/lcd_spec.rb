require File.join File.dirname(__FILE__), "spec_helper"

describe Lcd do
  it "should have a NUMBERS constant" do
    Lcd::NUMBERS.should be_kind_of(Array)
  end
  
  context "numbers database" do
    it "should include mapping for 1" do
      Lcd::NUMBERS.should include([false, [false, true], false, [false, true], false])
    end
  end
  
  context "when first created" do
    before(:each) do
      @lcd = Lcd.new("10")
    end

    it "should have scale" do
      lcd = Lcd.new("1", 3)
      lcd.scale.should == 3
    end
    
    it "should have a default scale of 2" do
      @lcd.scale.should == 2
    end
    
    it "should have rows" do
      @lcd.rows.should == [
        [false, true],
        [[false, true], [true, true]],
        [false, false],
        [[false, true], [true, true]],
        [false, true]
      ]
    end
    
    context "input" do
      it "should be an array" do
        @lcd.input.should_not be_empty
      end
    
      it "should [1,0] for 10" do
        @lcd.input.should == [1,0]
      end
    end
    
    context "numbers collection" do
      it "should include boolean arrays for 1 and 0" do
        @lcd.numbers.should == [Lcd::NUMBERS[1], Lcd::NUMBERS[0]]
      end
    end
  end
  
  context "number rendering" do
    before(:each) do
      @lcd = Lcd.new("88", 1)
    end
    
    context "with a scale of 1" do
      context "horizontal rows" do
        it "should have dashes for true" do
          @lcd.horizontal_row([true, true]).should == " -   - "
        end
      
        it "should have spaces for false" do
          @lcd.horizontal_row([true, false, true]).should == " -       - "
        end
      end
    
      it "should output vertical pipes for vertical rows" do
        @lcd.vertical_row([[false, true], [true, false]]).should == "  | |  "
      end
    end
    
    context "with a scale of 2" do
      before(:each) do
        @lcd = Lcd.new("88", 2)
      end
      
      context "horizontal rows" do
        it "should have 2 dashes for true" do
          @lcd.horizontal_row([true, true]).should == " --   -- "
        end
      
        it "should have two spaces for false" do
          @lcd.horizontal_row([true, false, true]).should == " --        -- "
        end
      end
      
      it "should output two spaces between pipes for vertical rows" do
        @lcd.vertical_row([[false, true], [true, false]]).should == "   | |   "
      end
    end
  end
  
  context "outputting" do
    it "should output a correct LCD display for 10" do
      lcd = Lcd.new("10", 1)
      lcd.to_s.should == <<-EOF
     - 
  | | |
       
  | | |
     - 
EOF
    end
    
    it "should output a correct LCD display for 10" do
      lcd = Lcd.new("10", 2)
      lcd.to_s.should == <<-EOF
      -- 
   | |  |
   | |  |
         
   | |  |
   | |  |
      -- 
EOF
    end
    
  end
end
