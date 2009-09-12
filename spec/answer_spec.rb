require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Answer do
  it "should have a name" do
    Answer.new("Cat").name.should == "Cat"
  end
end