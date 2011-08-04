FactoryGirl.define do

  factory :user do |f|
    f.sequence(:username) { |n| "Joebloggs#{n}"}
    f.sequence(:email) { |n| "foo#{n}@example.com" }
    f.password "dragon"
    f.password_confirmation "dragon"
  end

end