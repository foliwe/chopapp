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
    name: Faker::Lorem.sentence,
    summary: Faker::Lorem.sentence(3),
    description: Faker::Lorem.paragraphs,
    user_id: foliwe.id
    )
end

3.times do
  Recipe.create!(
    name: Faker::Lorem.sentence,
    summary: Faker::Lorem.sentence(3),
    description: Faker::Lorem.paragraphs,
    user_id: akuma.id
    )
end

categories= Category.create!([{name:'Palm Oil'},{name:'Traditional Spices'},{name:'Cry fish'},{name:'Peau not butter'},{name:'Okary'},{name:'Okbolo'},{name:'Njasang'},{name:'Egusi'},{name:'Assorted Leaves'},])


puts '========================================='
puts "4 users created !!"
puts "2 users created !!"
puts "6 Recipes created !!"

