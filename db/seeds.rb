10.times {SchoolClass.create(title: Faker::Company.industry, room_number: rand(0..200))}
10.times {Student.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name)}