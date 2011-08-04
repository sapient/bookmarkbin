Given /^the following users:$/ do |users|
  User.create!(users.hashes)
end

When /^I delete the (\d+)(?:st|nd|rd|th) user$/ do |pos|
  visit users_path
  within("table tr:nth-child(#{pos.to_i+1})") do
    click_link "Destroy"
  end
end

Then /^I should see the following users:$/ do |expected_users_table|
  expected_users_table.diff!(tableish('table tr', 'td,th'))
end

Given /^a user called "([^"]*)" exists$/ do |username|
  User.create(:username => username, :password => "password", :password_confirmation => "password")
end

Given /^"([^"]*)" is logged in$/ do |username|
  visit('/sign_in')
  fill_in("Username", :with => username)
  fill_in("Password", :with => "password")
  click_on("Sign in")
end

Given /^"([^"]*)" logs in with "([^"]*)"$/ do |password|
  visit('/sign_in')
  fill_in("Username", :with => username)
  fill_in("Password", :with => password)
  click_on("Sign in")
end

Given /^I am signed in$/ do
  User.create(:username => "Sapient", :password => "password", :password_confirmation => "password")
  visit('/sign_in')
  fill_in("Username", :with => "Sapient")
  fill_in("Password", :with => "password")
  click_on("Sign in")
end
