# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

User.destroy_all
Gossipp.destroy_all
Tag.destroy_all
City.destroy_all

10.times do
  City.create(name: Faker::Address.city, zip_code: rand(01000..99138))
end

city = City.all

10.times do
  User.create(first_name: Faker::Name.unique.first_name, last_name: Faker::Name.unique.last_name, description: Faker::Lorem.sentence(word_count: 10, supplemental: true, random_words_to_add: 5), email: Faker::Internet.email, age: rand(15..90), city: city[rand(0..9)])
end

user = User.all

20.times do
  Gossipp.create(title: Faker::Lorem.sentence(word_count: 3), content: Faker::Lorem.sentence(word_count: 10, supplemental: true, random_words_to_add: 15), user: user[rand(0..9)])
end
tag = Tag.all
gossipp = Gossipp.all

10.times do
  Tag.create(title: Faker::Lorem.sentence(word_count: 4))
end

gossipp.each do |i|
  JoinTableGossippTag.create(tag: tag[rand(0...20)], gossipp: gossipp[rand(0..19)])
end


