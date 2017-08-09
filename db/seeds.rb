# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first
puts 'Cleaning database...'
Restaurant.destroy_all

puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    phone_number: "02 01 01 04 30",
    category:      "chinese"
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    phone_number: "02 01 01 04 33",
    category:      "italian"
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
    phone_number: "02 01 01 04 35",
    category:     "japanese"
  },
   {
    name:         "Blas",
    address:      "4 rue Blainville 7503 Paris",
    phone_number: "02 01 01 04 53",
    category:      "italian"
  },
  {
    name:         "LDAh",
    address:      "route de Suresnes 7000 Paris",
    phone_number: "02 01 01 04 55",
    category:     "japanese"
  }
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
