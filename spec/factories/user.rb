FactoryBot.define do
  factory :user do
    email { Faker::Internet.email }
    password { 'password' }
    name { Faker::Name.name }

    trait :with_session do
      after(:create) do |user|
        create :session, user: user
      end
    end
  end
end
