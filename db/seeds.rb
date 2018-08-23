# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product1 = Product.create({name: "Razor", description: "a razor!", price_in_cents: 20})
product2 = Product.create({name: "Gum", description: "chew it!", price_in_cents: 1})
