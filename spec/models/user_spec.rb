require 'spec_helper'

describe 'User' do
  it "should not allow duplicate username" do
    user = Factory(:user, :username => "Sapient")
    user2 = User.create(:username => "Sapient", :password => "password", :password_confirmation => "password")
    user.should be_instance_of(User)
    user2.should be_invalid
  end
end