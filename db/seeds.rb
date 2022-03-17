# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# List.destroy_all
# puts "Cleaning db"

list = List.create!(name: 'Valentin', user: User.first)
list2 = List.create!(name: 'Le', user: User.first)
list3 = List.create!(name: 'BG', user: User.first)
puts "Creating #{list.name}"
