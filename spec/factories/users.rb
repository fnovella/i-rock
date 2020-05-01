FactoryBot.define do

  sequence(:email) {|n| "email-#{n}@example.com"}

  factory :user do
    email { FactoryBot.generate(:email) }
    password {'supersecret'}
  end
end
