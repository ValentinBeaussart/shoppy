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
jo = User.create!(
  email: "jo@test.test",
  password: "123456"
)

intermarche = List.create!(name: 'Intermarché', user: val)
super_u = List.create!(name: 'Super U', user: jo)
carrefour = List.create!(name: 'Carrefour', user: User.first)

oeuf = Product.create!(name: 'Oeufs')
banane = Product.create!(name: 'Banane')
pain = Product.create!(name: 'Pain')
pomme = Product.create!(name: 'Pomme')
eau = Product.create!(name: 'Eau')
pate = Product.create!(name: 'Pâtes')
salade = Product.create!(name: 'Salade')
biere = Product.create!(name: 'Bière')
avocat = Product.create!(name: 'Avocat')
raisin = Product.create!(name: 'Raisins')
ananas = Product.create!(name: 'Ananas')

ProductList.create!(quantity: '1', product: oeuf, unity: "Boîte", list: intermarche, taken: true)

puts "#{User.count} user were created"
puts "#{List.count} lists were created"
puts "#{Product.count} products were created"
puts "#{ProductList.count} product_list were created"
