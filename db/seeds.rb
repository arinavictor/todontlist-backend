# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
List.destroy_all
Todo.destroy_all 

User.create(username: "avictor", password_digest:  "avictor")
List.create(name: "Daily", user_id: 3)
List.create(name: "Weekly", user_id: 3)
List.create(name: "Financial", user_id: 3)
List.create(name: "Mindfulness", user_id: 3)
