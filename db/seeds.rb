# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure de Gaulle",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
    category:     "french",
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
    category:     "belgian",
  },
  {
    name:         "Ciao ciao bambino",
    address:      "route de Suresnes 75016 Paris",
    category:     "italian",
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }
