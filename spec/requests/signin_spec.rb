require 'spec_helper'

describe "Signing in" do

  it "should require a valid password" do
    user = Factory(:user, :username => "Sapient")
    visit sign_in_path
    fill_in "Username", :with => "Sapient"
    click_button "Sign in"
    page.should have_content("Invalid username or password")
    fill_in "Username", :with => "Sapient"
    fill_in "Password", :with => "dragon"
    click_button "Sign in"
    page.should have_content("Welcome Sapient")
  end

  it "should require that the correct password is entered" do
    user = Factory(:user, :username => "Sapient")
    visit sign_in_path
    fill_in "Username", :with => "Sapient"
    fill_in "Password", :with => "wrongpass"
    click_button "Sign in"
    page.should have_content("Invalid username or password")
    fill_in "Username", :with => "Sapient"
    fill_in "Password", :with => "dragon"
    click_button "Sign in"
    page.should have_content("Welcome Sapient")
  end
end