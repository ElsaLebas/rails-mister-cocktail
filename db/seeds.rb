require "open-uri"

puts "cleaning database"
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




file = URI.open('https://giantbomb1.cbsistatic.com/uploads/original/9/99864/2419866-nes_console_set.png')
cocktail = Cocktail.new(name: 'NES')
cocktail.photo.attach(io: file, filename: 'nes.png', content_type: 'image/png')
