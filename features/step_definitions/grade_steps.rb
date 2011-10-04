Given /^I have (\d+) grades?$/ do |arg1|
  (1 ..arg1.to_i).each do
    Factory(:grade)
  end
end

Given /^the following (.+) records?$/ do |factory, table|
  table.hashes.each do |hash|
    Factory(factory, hash)
  end
end

Then /^I should see (\d+) grades$/ do |arg1|
  Grade.count.should == arg1.to_i
end