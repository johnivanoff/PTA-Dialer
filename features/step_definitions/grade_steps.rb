Given /^I have (\d+) grades?$/ do |arg1|
  (1 ..arg1.to_i).each do
    Factory(:grade)
  end
end