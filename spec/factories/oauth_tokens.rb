# frozen_string_literal: true

FactoryBot.define do
  factory :oauth_token, class: Doorkeeper::AccessToken do
    trait :with_refresh_token do
      refresh_token { SecureRandom.hex }
    end
  end
end
