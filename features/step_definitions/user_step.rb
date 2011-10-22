Given /^I am logged in$/ do
  Factory (:user)
  visit ('logout')
  visit ('login')
  fill_in('Email', :with => 'example@example.com')
  fill_in('Password', :with => 'seceret')
  click_button('Log in')
end

Given /^I am not logged in$/ do
  visit ('logout')
end
