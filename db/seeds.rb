# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


foliwe = User.create!(name: "Foliwe" ,email: "foliwe@example.com", password: "password")
akuma = User.create!(name: "Akuma", email: "akuma@example.com", password: "password")

3.times do
  Recipe.create!(
    name: Faker::Food.ingredient,
    summary: Faker::Lorem.sentence(3),
    description: Faker::Lorem.paragraphs,
    image: "http://lorempixel.com/1200/800/food/",
    category_id: Faker::Number.between(1, 7),
    user_id: foliwe.id
    )
end

3.times do
  Recipe.create!(
    name: Faker::Food.ingredient,
    summary: Faker::Lorem.sentence(3),
    description: Faker::Lorem.paragraphs,
    image: "http://lorempixel.com/1200/800/food/",
    category_id: Faker::Number.between(1, 7),
    user_id: akuma.id
    )
end

categories= Category.create!([{name:'Traditional'},{name:'Meat'},{name:'Fish'},{name:'Creative'},{name:'Salad'},{name:'Vegitable'},{name:'Bakery'}])


puts '========================================='
puts "4 users created !!"
puts "2 users created !!"
puts "6 Recipes created !!"

