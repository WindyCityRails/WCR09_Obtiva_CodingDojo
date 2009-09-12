Given /^a new game for (\w+)$/ do |player|
  @bowling_sheet = BowlingSheet.new(player)
end

When /^no balls are rolled$/ do
  # noop
end

When /^the rolls are (\d+), (\d+)$/ do |first, second|
  @bowling_sheet.add_roll(first.to_i)
  @bowling_sheet.add_roll(second.to_i)
end

Given /^the following Score$/ do |table|
  # table is a Cucumber::Ast::Table
  @bowling_sheet.scores = table.raw
end

Then /^output should look like$/ do |string|
  @bowling_sheet.to_s.should == string
end

Then /^the score should be (\d+)$/ do |score|
  @bowling_sheet.score.should == score.to_i
end