# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'json'
require 'open-uri'

url = 'http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list'
ingredients_series = open(url).read
drinks_obj = JSON.parse(ingredients_series)
ingredients_tab = drinks_obj["drinks"].flatten

10.times do |variable|
  Ingredient.create(name: ingredients_tab[rand(0..(ingredients_tab.length - 1))]["strIngredient1"])
end

