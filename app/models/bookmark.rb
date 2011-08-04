class Bookmark < ActiveRecord::Base
  validates_presence_of :user_id
  validates_presence_of :url
end
