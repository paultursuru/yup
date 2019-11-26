# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Cleaning database..."

Veggy.destroy_all

puts "Creating a few veggies..."

tomato = Veggy.create!(
  name: 'Tomato',
  seed_level: 3,
  sun_orientation: 'North'
  )

carrot = Veggy.create!(
  name: 'Carrot',
  seed_level: 2,
  sun_orientation: 'East'
  )

basil = Veggy.create!(
  name: 'Basil',
  seed_level: 1,
  sun_orientation: 'South'
  )

puts 'Finished'
