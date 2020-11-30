require 'open-uri'
require 'json'

ingredients = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list').read
ingredients_list = JSON.parse(ingredients)
drinks = ingredients_list['drinks']

puts 'Creating the ingredients'
drinks.each do |ingredient|
  Ingredient.create(name: ingredient['strIngredient1'])
end
puts 'Ingredients created'
