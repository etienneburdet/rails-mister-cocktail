# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'open-uri'
require 'json'

puts "Reseting all ingredients"
Ingredient.destroy_all

ingredients_serial = open("https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read
ingredients = JSON.parse(ingredients_serial)

ingredients["drinks"].each do |ingredient|
  new_ingredient = Ingredient.create!(name: ingredient["strIngredient1"])
  puts "Added #{new_ingredient.name}"
end


puts "Reseting all cocktails"
Cocktail.destroy_all
