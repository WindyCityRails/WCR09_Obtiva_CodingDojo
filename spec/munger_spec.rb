require File.expand_path(File.dirname(__FILE__) + '/spec_helper')
require File.expand_path(File.dirname(__FILE__) + '/../lib/munger')

describe String do  
  context "munge_word" do    
    it "3 letter word should be unchanged" do
      "Hey".munge.should == "Hey"
    end

    it "first and last letter should not change" do
      "Four".munge[0].chr.should == "F"
      "Four".munge[-1].chr.should == 'r'
    end
  end
  
  context "munge" do    
    it "should preserve original whitespace" do
      "Hey  and".munge[3].chr.should == " "
      "Hey  and".munge[4].chr.should == " "
    end    

    # NOTE: this test will on rare occasions give a false negative.
    it "should usually hit all variations in 1000 runs" do
      results = []
      1000.times do
        results << "score".munge
      end
      results.should include "score"
      results.should include "socre"
      results.should include "scroe"
    end

  end
  
end
