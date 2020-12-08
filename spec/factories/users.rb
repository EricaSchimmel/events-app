FactoryBot.define do
  factory :user do
    name { "John" }
    email { "test_user@example.com" }
    password { "password" }
  end
end
