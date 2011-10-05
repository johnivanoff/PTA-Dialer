Then /^I should see (\d+) parents$/ do |arg1|
  Parent.count.should == arg1.to_i 
end
