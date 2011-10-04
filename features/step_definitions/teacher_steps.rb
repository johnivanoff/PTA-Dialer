Then /^I should see (\d+) teachers$/ do |arg1|
  Teacher.count.should == arg1.to_i
end