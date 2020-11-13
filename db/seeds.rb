Cocktail.destroy_all
Ingredient.destroy_all

puts 'Creating 2 fake cocktails...'
Cocktail.create!(name: "Cosmopolitan")
Cocktail.create!(name: "Mosko Mule")
puts 'Finished!'

Ingredient.create!(name: "lemon")
Ingredient.create!(name: "ice")
Ingredient.create!(name: "mint leaves")

# puts 'Creating 10 fake ingredients...'
# 10.times do
#   ingredient = Ingredient.new(name: " #{Faker::Food.ingredient} ")
#   ingredient.save!
# end
# puts 'Finished!'
