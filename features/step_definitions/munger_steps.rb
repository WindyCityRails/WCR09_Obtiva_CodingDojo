Given /^I pass in a string "([^\"]*)"$/ do |string|
  @munged_result = %x{ ./munger.rb "#{string}" }
end

When /^I hit enter$/ do
  # do nothing
end

Then /^I should see "([^\"]*)"$/ do |string|
  @munged_result.should match(/#{string.gsub('*', '\w')}/)
end

Given /^I pass in a file "([^\"]*)"$/ do |arg1|
  pending
end

Then /^scrambled text is displayed$/ do
  pending
end
