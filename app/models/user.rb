class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create

  #validates_confirmation_of :password, :on => :create
  validates_uniqueness_of :username, :message => "That username is already taken"
end
