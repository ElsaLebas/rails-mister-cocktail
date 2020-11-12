puts 'Creating 2 fake cocktails...'
  pina = Cocktail.new(name: "Pina Colada")
  pina.save!
  marga = Cocktail.new(name: "Margarita")
  marga.save!
puts 'Finished!'

puts 'Creating 10 fake ingredients...'
10.times do
  ingredient = Ingredient.new(name: " #{Faker::Food.ingredient} ")
  ingredient.save!
end
puts 'Finished!'

# Ingredient.create(name: "lemon")
# Ingredient.create(name: "ice")
# Ingredient.create(name: "mint leaves")
