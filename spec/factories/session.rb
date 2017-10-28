FactoryBot.define do
  factory :session do
    token { SecureRandom.hex }
    expires_at { 14.days.from_now }

    user
  end
end
