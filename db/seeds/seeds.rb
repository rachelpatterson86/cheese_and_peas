# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).

Dir[File.join(Rails.root, 'db', 'seeds', '*.rb')].sort.each { |seed| load seed }
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# 10.times do |a|
#   AllowedAllergy.create({
#     allergy_name: Faker::Lorem.word,
#     yummly_id: Faker::Number.number(3)
#     })
#   end
#
# 10.times do |d|
#   AllowedDiet.create({
#     diet_name: Faker::Lorem.word,
#     yummly_id: Faker::Number.number(3)
#     })
#   end
#
# 10.times do |i|
#   ExcludedIngredient.create({
#     ingredient_name: Faker::Lorem.word,
#     yummly_id: Faker::Number.number(3)
#     })
#   end

#
# 5.times do |u|
#   User.create({
#     username: Faker::Name.name,
#     email: Faker::Internet.email,
#     password: "password"
#     })
#   end
