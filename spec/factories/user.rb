FactoryGirl.define do
  factory :user do
    name "Some User"
    sequence(:email) { |n| "user#{n}@example.com" }
    password "awksauce"
  end
end