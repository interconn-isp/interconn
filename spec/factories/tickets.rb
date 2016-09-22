FactoryGirl.define do
  factory :ticket do
    full_name { Faker::Name.name }
    email { Faker::Internet.email }
    subject 'Nothing works!'
    body { Faker::Lorem.paragraph }

    trait :with_phone_number do
      phone_number { Faker::Phone.number }
    end
  end
end
