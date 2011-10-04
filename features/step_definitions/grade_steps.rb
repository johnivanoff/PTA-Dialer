Given /^I have (\d+) (.+)?$/ do |number_of, model|
  (1 ..number_of.to_i).each do
    Factory(model.chop)
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