Given /^I start a new Quiz$/ do
  @quiz = Quiz.new()
  @quiz.ui.stub!(:say)
  @quiz.start
end

Then /^I should see "([^\"]*)"$/ do |arg1|
  @quiz.ui.should_receive(:say).with(arg1)
end

When /^I am asked "([^\"]*)" and I type "([^\"]*)"$/ do |question, answer|
  @quiz.ui.should_receive(:ask).with(question).and_return(answer)
end



