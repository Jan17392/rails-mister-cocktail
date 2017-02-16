require 'open-uri'
require 'json'

result = JSON.parse(open("http://www.thecocktaildb.com/api/json/v1/1/list.php?i=list").read)

result['drinks'].each do |drink|
  Ingredient.create(name: drink['strIngredient1'])
end
