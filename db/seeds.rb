# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end


# db/seeds.rb

Restaurant.destroy_all

restaurants = [
  { name: "Epicure", address: "75008 Paris", phone_number: "0123456789", category: "french" },
  { name: "Sushi Zen", address: "Tokyo, Japan", phone_number: "09012345678", category: "japanese" },
  { name: "La Trattoria", address: "Rome, Italy", phone_number: "06 12345678", category: "italian" },
  { name: "Dragon Palace", address: "Beijing, China", phone_number: "010-87654321", category: "chinese" },
  { name: "Chez Belge", address: "Brussels, Belgium", phone_number: "02 123 45 67", category: "belgian" }
]

restaurants.each do |attrs|
  Restaurant.create!(attrs)
end

puts "Seeded #{Restaurant.count} restaurants"
