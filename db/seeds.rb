# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Fighter.create(name: "jerry j", nickname: "the j man", weight_class: "super heavyweight", country: "yugoslavia", home: "Zagreb")

Camp.create(name: "best camp")

Comment.create(content: "khabib sucks", user_id: 1, fighter_id: 1)

Favorite.create(user_id: 1, fighter_id: 1)

User.create(name: "jared")
