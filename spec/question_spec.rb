require File.expand_path(File.dirname(__FILE__) + '/spec_helper')

describe Question do
  
  before(:each) do
    @question = Question.new('Is it a small animal?')
    @elephant = Answer.new('Elephant')
  end
  
  it "should have a text" do
    @question.text.should == 'Is it a small animal?'
  end
  
  it "should respond to yes" do
    @question.should respond_to(:yes)
  end
  
  it "should respond to no" do
    @question.should respond_to(:no)
  end
  
  it "should accept for no either an answer or a question" do
    
  end
  
  it "should be able add an answer to no" do
    @question.no = @elephant
    @question.no.should  == @elephant
  end
  
end