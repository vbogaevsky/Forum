FactoryGirl.define do
  factory :topick do
    association :post
    theme {Faker::Lorem.sentence}
  end
end
