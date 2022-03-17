# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
puts "Cleaning db"

Product.destroy_all

user = User.create!(
  email: "test@test.test",
  password: "123456"
)

intermarche = List.create!(name: 'Intermarché', user: User.first)
list2 = List.create!(name: 'Super U', user: User.first)
list3 = List.create!(name: 'Carrefour', user: User.first)

oeuf = Product.create!(name: 'Oeuf')
banane = Product.create!(name: 'Banane')
preservatif = Product.create!(name: 'préservatif')

ProductList.create!(quantity: '1', product: oeuf, list: intermarche)

puts "#{User.count} user were created"
puts "#{List.count} lists were created"
puts "#{Product.count} products were created"
puts "#{ProductList.count} product_list were created"
