FactoryBot.define do
  factory :user, aliases: [:host] do
    name { "John" }
    email { "test_user@example.com" }
    password { "password" }
  end
end
