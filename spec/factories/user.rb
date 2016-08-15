FactoryGirl.define do
  factory :user do
    first_name "Danielle"
    last_name "Cordoba"
    sequence(:email) { |n| "user#{n}@factory.com"}
  end
end