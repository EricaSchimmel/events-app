FactoryBot.define do
  factory :event do
    host
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    online { true }
    start_date { Faker::Time.between(:from => DateTime.now, :to => DateTime.now + 1) }
    end_date { Faker::Time.between(:from => DateTime.now + 2, :to => DateTime.now + 3) }
    online_link { Faker::Internet.url }
    guest_limit { 3 }
  end
end
