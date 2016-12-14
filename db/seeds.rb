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

users = User.create!([
  {
  username: "mickyginger",
  image: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/p/2/000/27a/28f/0cdd04e.jpg",
  email: "mike.hayden@ga.co",
  password: "password",
  password_confirmation: "password"
  },
  {
  username: "emilyi",
  image: "https://media.licdn.com/mpr/mpr/shrinknp_200_200/AAEAAQAAAAAAAAQ3AAAAJDc5ZDViYjlkLTAwZTMtNDNlMy1iMDBmLTA5ODU5NTA0MjJlZQ.jpg",
  email: "emily.isacke@ga.co",
  password: "password",
  password_confirmation: "password"
  },
  {
  username: "ErvisDPriftis",
  image: "https://pbs.twimg.com/profile_images/741268515496337408/Qh92eO5i.jpg",
  email: "ervis@example.com",
  password: "password",
  password_confirmation: "password"
  }
])

Space.create!([
  {
  name: "Aldgate East",
  lat: 51.515233,
  lng: -0.072434,
  image: "https://i.ebayimg.com/00/s/NjEyWDgxNg==/z/L2IAAOSwMtxXsYgR/$_86.JPG",
  width: 3.5,
  length: 5.0,
  details: "Availability Wednesday to Friday Time: 9:00am to 13:00pm",
  user: users[0]
  },
  {
  name: "Wimbledon",
  lat: 51.418339,
  lng: -0.220629,
  image: "https://www.justpark.com/media/uploaded/listing-photos/576421c335630-normal.jpg",
  width: 4.0,
  length: 8.0,
  details: "Availability Monday to Friday Time: 7:00am to 17:00pm",
  user: users[1]
  },
  {
  name: "Enfield",
  lat: 51.652671,
  lng: -0.096144,
  image: "http://media.rightmove.co.uk/dir/4k/3843/45697157/3843_462359_IMG_00_0000_max_656x437.jpg",
  width: 4.0,
  length: 5.0,
  details: "Availability Saturday to Sunday Time: 6:00am to 24:00pm",
  user: users[2]
  }
])
