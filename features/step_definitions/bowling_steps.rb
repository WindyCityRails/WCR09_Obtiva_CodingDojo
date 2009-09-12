Given /^BowlingSheet for (\w+)$/ do |player|
  @bowling_sheet = BowlingSheet.new(player)
end

Given /^no balls rolled$/ do
  # noop
end

Given /^the following Score$/ do |table|
  # table is a Cucumber::Ast::Table
  @bowling_sheet.scores = table.raw
end

Then /^BowlingSheet should look like$/ do |string|
  @bowling_sheet.to_s.should == string
end

