# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create!(name:  "Juakata",
             password: "Fghjfghj456")

Area.create!(name: "HTML & CSS", user_id: 1)
Area.create!(name: "Ruby", user_id: 1)
Area.create!(name: "Ruby on Rails", user_id: 1)
Area.create!(name: "Javascript", user_id: 1)

Network.create!(gitgub: "https://github.com/Juakata",
                linkedin: "https://www.linkedin.com/in/andoni-uzquiano-31304818a",
                gmail: "juakata07@gmail.com",
                twitter: "https://twitter.com/HUzquiano",
                instagram: "https://www.instagram.com/uzquiano007",
                user_id: 1)

Profile.create!(photo: File.new('assets/images/andoni.jpg'),
                intro: 'Hola mi nombre es andoni')
