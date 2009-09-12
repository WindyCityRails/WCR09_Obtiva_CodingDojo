require File.join(File.dirname(__FILE__), "/spec_helper")

describe Quiz do
  before do
    @quiz = Quiz.new
#    @quiz.ui.stub!(:say)
  end

  context "when I guess right the first time" do
    #@quiz.decision_tree_start = Answer.new('elephant')
    it "should say Think of an animal..." do
      @quiz.ui.should_receive(:say).with("Think of an animal...")
      @quiz.ui.should_receive(:ask).with("Is it an elephant?  (y or n)").and_return("y")
      @quiz.ui.should_receive(:say).with("I win!  Pretty smart, aren't I?")
      @quiz.start
    end
  end

  context "when I guess right the second time" do
    #@quiz.decision_tree_start = Answer.new('elephant')
    it "should say Think of an animal..." do
      @quiz.ui.should_receive(:say).with("Think of an animal...")
      @quiz.ui.should_receive(:ask).with("Is it an elephant?  (y or n)").and_return("n")
      @quiz.ui.should_receive(:say).with("You win. Help me learn from my mistake...")
      @quiz.start
    end
  end
end
