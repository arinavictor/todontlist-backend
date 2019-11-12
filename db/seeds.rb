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
List.create(name: "Daily")
Todo.create(title: "Eat junk food", description: "Don't eat junk food", done: false, user_id: 1, list_id: 1)
