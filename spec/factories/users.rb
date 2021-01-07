FactoryBot.define do
  factory :user, :aliases => [:host] do
    name { Faker::Name.name[2..30] }
    email { Faker::Internet.email }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
