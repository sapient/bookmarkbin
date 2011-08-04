require 'spec_helper'

describe "SignUps" do

  it "should let a user sign up" do
    visit signup_path
    fill_in "Username", :with => "Sapient"
    fill_in "Password", :with => "dragons"
    fill_in "Password confirmation", :with => "dragons"
    click_button "Create account"
    page.should have_content("Welcome Sapient")
  end

  it "should make sure password and confirmation match" do
    visit signup_path
    fill_in "Username", :with => "Sapient"
    fill_in "Password", :with => "dragons"
    fill_in "Password confirmation", :with => "dragon"
    click_button "Create account"
    page.should have_content("Password doesn't match confirmation")
  end

end
