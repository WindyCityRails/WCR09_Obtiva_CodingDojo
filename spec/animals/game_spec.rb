require File.join(File.dirname(__FILE__), "../spec_helper")

module Animals
  describe Game do
    before do
      @game = Animals::Game.new
      @ui = ConsoleUI
      @ui.stub!(:say)
    end
    
    context "when running the game" do
      it "should say Think of an animal..." do
        @ui.should_receive(:say).with("Think of an animadl...")
        @game.start
      end
    
      it "should say something" do
        @game.start
      end
    end
  end
end