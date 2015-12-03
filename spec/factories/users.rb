FactoryGirl.define do
  factory :user do
    handle {Faker::Name.first_name}
    email {Faker::Internet.email}
    association :post
    association :topick
    password_digest {Faker::Internet.password}
    moderator false
    admin false
  end
end
