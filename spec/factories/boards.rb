FactoryGirl.define do
  factory :board do
    name {Faker::Lorem.sentence}
  end
end
