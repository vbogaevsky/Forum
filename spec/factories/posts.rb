FactoryGirl.define do
  factory :post do
    association :user
    message {Faker::Lorem.paragraph}
  end
end
