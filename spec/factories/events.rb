FactoryBot.define do
  factory :event do
    host
    title { Faker::Lorem.sentence }
    description { Faker::Lorem.paragraph }
    online { true }
    start_date { Faker::Date.between(:from => Date.today, :to => 7.days.from_now) }
    end_date { "15:00" }
    online_link { Faker::Internet.url }
    attendee_limit { 15 }
  end
end
