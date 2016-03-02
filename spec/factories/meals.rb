FactoryGirl.define do
  factory :meal do
    sequence(:name) { |n| "Meal #{n}" }
    price 10
    user_id 1
    category
  end
end
