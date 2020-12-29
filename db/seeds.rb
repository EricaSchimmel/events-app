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
    date: Faker::Date.between( from: Date.today, to: 7.days.from_now),
    start_time: "14:00",
    end_time: "15:00",
    online_link: Faker::Internet.url,
    attendee_limit: 15
)
