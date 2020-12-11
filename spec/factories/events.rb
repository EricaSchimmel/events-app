FactoryBot.define do
  factory :event do
    host
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    online { true }
    date { Date.today }
    start_time { "14:00" }
    end_time { "15:00" }
    online_link { "https//www.example.com" }
    attendee_limit { 15 }
  end
end
