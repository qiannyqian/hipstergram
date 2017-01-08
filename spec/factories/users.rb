FactoryGirl.define do
  factory :user do
    email "user@email.com"
    username "username"
    password "password"

    trait :reset_password do
      password_reset_token "resettoken"
      password_reset_at DateTime.now
    end

    trait :expired_token do
      password_reset_at DateTime.now + 25.hours
    end

    trait :sequenced_email do
      sequence(:email) { |n| "user#{n}email.com"}
    end

    trait :sequenced_username do
      sequence(:username) { |n| "username#{n}"}
    end

  end
end
