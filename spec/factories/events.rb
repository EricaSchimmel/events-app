FactoryBot.define do
  factory :event do
    user { nil }
    title { "MyString" }
    description { "MyString" }
    online { false }
    date { "MyString" }
    start_time { "MyString" }
    end_time { "MyString" }
    online_link { "MyString" }
    attendee_limit { 1 }
  end
end
