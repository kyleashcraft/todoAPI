# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

5.times do
  name = Faker::Internet.unique.user_name
  User.create(
    username: name,
    email: Faker::Internet.email(name),
    password: 'password'
  )
end

users = User.all

10.times do
  List.create(
    title: Faker::App.name,
    private: [true, false].sample,
    user: users.sample
  )
end

lists = List.all


100.times do
  Item.create(
    title: Faker::Color.color_name,
    list: lists.sample,
    completed: [true, false].sample
  )
end

items = Item.all

puts "#{users.count} users created"
puts "#{lists.count} lists created"
puts "#{items.count} items created"
