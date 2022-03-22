# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning db"
User.destroy_all
Product.destroy_all

val = User.create!(
  email: "val@test.test",
  password: "123456"
)

# eau = Product.create!(name: 'Eau')
# pate = Product.create!(name: 'Pâtes')
# compote = Product.create!(name: 'Compôte')
# shampoing = Product.create!(name: 'Shampoing')
# gruyere = Product.create!(name: 'Gruyère')
# pq = Product.create!(name: 'Papier-WC')
# dentifrice = Product.create!(name: 'Dentifrice')

puts "#{User.count} user were created"
puts "#{List.count} lists were created"
puts "#{Product.count} products were created"
puts "#{ProductList.count} product_list were created"
