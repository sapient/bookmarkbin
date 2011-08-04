FactoryGirl.define do

  factory :user do |f|
    f.sequence(:username) { |n| "Joebloggs#{n}"}
    f.sequence(:email) { |n| "foo#{n}@example.com" }
    f.password "secret"
    f.password_confirmation "secret"
  end

end