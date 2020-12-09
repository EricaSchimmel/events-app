FactoryBot.define do
  factory :event do
    host
    title { "Test Event" }
    description { "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua." }
    online { true }
    date { Date.today }
    start_time { "14:00" }
    end_time { "15:00" }
    online_link { "https//www.example.com" }
    attendee_limit { 15 }
  end
end
