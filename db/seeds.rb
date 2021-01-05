3.times do
    User.create(
        name: Faker::Name.name[2..30],
        email: Faker::Internet.email,
        password: "password",
        password_confirmation: "password"
    )
end

user1 = User.first
user2 = User.second
user3 = User.third

user1.hosted_events.create(
    title: Faker::Lorem.sentence,
    description: Faker::Lorem.paragraph,
    online: true,
    start_date: Faker::Time.between(from: DateTime.now, to: DateTime.now + 1),
    end_date: Faker::Time.between(from: DateTime.now + 2, to: DateTime.now + 3),
    online_link: Faker::Internet.url,
    attendee_limit: 15
)
