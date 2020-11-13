# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'open-uri'
require 'faker'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_series = open(url).read
drinks_obj = JSON.parse(ingredients_series)
ingredients_tab = drinks_obj["drinks"].flatten

10.times do
  Ingredient.create(name: ingredients_tab[rand(0..(ingredients_tab.length - 1))]["strIngredient1"])
end

# file = URI.open('https://images.unsplash.com/photo-1520004434532-668416a08753?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=1050&q=80')
# 10.times do
#   cocktail = Cocktail.new(name: Faker::Coffee.blend_name)
#   cocktail.picture.attach(io: file, filename: 'test.png', content_type: 'image/png')
#   cocktail.save
# end
