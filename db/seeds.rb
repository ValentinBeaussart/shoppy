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

salade = Product.create!(name: 'Salade')
pate = Product.create!(name: 'Pâtes')
compote = Product.create!(name: 'Compôte')
shampoing = Product.create!(name: 'Shampoing')
gruyere = Product.create!(name: 'Gruyère')
pq = Product.create!(name: 'Papier-WC')
pdt = Product.create!(name: 'Pomme de terre')
tmt = Product.create!(name: 'Tomate')
moz = Product.create!(name: 'Mozzarella')
br = Product.create!(name: 'Beurre')
lait = Product.create!(name: 'Lait')
brio = Product.create!(name: 'Brioche')
conl = Product.create!(name: 'Conserve de légumes')
poiss = Product.create!(name: 'Poisson pané')
bat = Product.create!(name: 'Batonnet de patate')
jard = Product.create!(name: 'Jardinière')
gnocci = Product.create!(name: 'Gnocci')
paf = Product.create!(name: 'Pâte fraîche')
eau = Product.create!(name: 'Eau')
frit = Product.create!(name: 'Frite')
steak = Product.create!(name: 'Steak Hâché')
lessi = Product.create!(name: 'Lessive')
croqu = Product.create!(name: 'Croquettes chat')


puts "#{User.count} user were created"
puts "#{List.count} lists were created"
puts "#{Product.count} products were created"
puts "#{ProductList.count} product_list were created"
