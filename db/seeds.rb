# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create users
User.create(name: 'user1')

# Create foods
Food.create(user: User.first, name: 'food1', unit: 'unit1', price: 1, quantity: 1)

# Create recipes
Recipe.create(user: User.first, name: 'recipe1', prep_time: 1, cook_time: 1, description: 'description1', public: false)

# Create recipe_foods
RecipeFood.create(recipe: Recipe.first, food: Food.first, quantity: 1)