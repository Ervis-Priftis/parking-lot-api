# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


["users","spaces"].each do |table_name|
  ActiveRecord::Base.connection.execute("TRUNCATE #{table_name} RESTART IDENTITY CASCADE")
end

User.create!([
  {
  username: "mickyginger",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
  },
  {
  username: "emilyi",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
  },
  {
  username: "ErvisDPriftis",
  email: "ervis@example.com",
  password: "password",
  password_confirmation: "password"
  }
])

Space.create!([
  {
  lat: 51.515233,
  lng: -0.072434,
  image: "image",
  width: 3.5,
  length: 5.0,
  details: "Availabelity Wednesday to Friday Time: 9:00am to 13:00pm",
  user_id: 1
  },
  {
  lat: 51.515222,
  lng: -0.072423,
  image: "image",
  width: 4.0,
  length: 8.0,
  details: "Availabelity Monday to Friday Time: 7:00am to 17:00pm",
  user_id: 2
  },
  {
  lat: 51.515222,
  lng: -0.072423,
  image: "image",
  width: 4.0,
  length: 5.0,
  details: "Availabelity Saturday to Sunday Time: 6:00am to 24:00pm",
  user_id: 3
  }
])
