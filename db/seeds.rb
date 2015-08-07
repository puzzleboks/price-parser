# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Store.destroy_all
Item.destroy_all

Store.create(name: "Meijer's", user: User.first)
Store.create(name: "Westborn Market", user: User.first)
Store.create(name: "Farmer Jack's", user: User.first)


Item.create(name: "yak milk", brand: "Johnny Carsons", item_type: "low fat", price: 2.99, total_measure: 64, unit_of_measure: "ounce", price_per_unit: 0.0467, notes: "500 mg salt per serving", price_expiration: nil, store: Store.first)
Item.create(name: "platypus eggs", brand: "Antipodes", item_type: "extra large", price: 4.99, total_measure: 12, unit_of_measure: "count", price_per_unit: 0.4158, notes: "omega-3 enriched", price_expiration: nil, store: Store.first)
Item.create(name: "hen teeth", brand: "Ye Three Olde Witches", item_type: "regular", price: 7.99, total_measure: 16, unit_of_measure: "ounces", price_per_unit: 0.4999, notes: "trouble and toil", price_expiration: nil, store: Store.first)
Item.create(name: "rubber biscuits", brand: "Blues Bros.", item_type: "extra chewy", price: 2.49, total_measure: 10, unit_of_measure: "ounces", price_per_unit: 0.2490, notes: "you'll go hungry!", price_expiration: nil, store: Store.first)
