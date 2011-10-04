Then /^I should see (\d+) students$/ do |arg1|
  Student.count.should == arg1.to_i
end