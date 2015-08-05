# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Store.create(name: "Meijer's", user: User.first)


Item.create(name: "yak milk", brand: "Johnny Carson's", item_type: "low fat", price: 2.99, total_measure: 64, unit_of_measure: "ounce", price_per_unit: 0.0467, notes: "500 mg salt per serving", price_expiration: nil, store: Store.first)
