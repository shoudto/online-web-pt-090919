Recipe.destroy_all
Ingredient.destroy_all

puts "seeding database..."
Spoonacular::Adapter.new.fetch_recipes
puts "done."