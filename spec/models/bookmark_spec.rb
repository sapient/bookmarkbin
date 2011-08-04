require 'spec_helper'

describe "Bookmark" do
  it "should be invalid without a user_id" do
    bookmark = Bookmark.create(:url => "www.example.com", :description => "An example")
    bookmark.errors_on(:user_id).should include("can't be blank")
    bookmark.should be_invalid
    bookmark.user_id = 1
    bookmark.should be_valid
  end

  it "should be invalid without a url" do
    bookmark = Bookmark.create(:description => "An example", :user_id => 1)
    bookmark.errors_on(:url).should include("can't be blank")
    bookmark.should be_invalid
    bookmark.url = "www.example.com"
    bookmark.should be_valid
  end
end