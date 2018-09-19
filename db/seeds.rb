# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
product1 = Product.create({name: "Razor", description: "shave your face!", price_in_cents: 2000})
product2 = Product.create({name: "Gum", description: "chew it!", price_in_cents: 100})
product3 = Product.create({name: "Shoes", description: "run around!", price_in_cents: 50000})
product4 = Product.create({name: "Blanket", description: "stay warm!", price_in_cents: 350000})
product5 = Product.create({name: "Typewriter", description: "type stuff!", price_in_cents: 50000000})
product6 = Product.create({name: "Lamp", description: "illuminate rooms!", price_in_cents: 2000})
product7 = Product.create({name: "Cup", description: "contain liquids!", price_in_cents: 500})
product8 = Product.create({name: "Washing machine", description: "wash clothes!", price_in_cents: 10000000})
product9 = Product.create({name: "Xbox", description: "play it!", price_in_cents: 400000})
product10 = Product.create({name: "Coffee", description: "drink it!", price_in_cents: 1500})
