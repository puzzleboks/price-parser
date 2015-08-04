class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :brand
      t.string :type
      t.float :price
      t.float :total_measure
      t.string :unit_of_measure
      t.float :price_per_unit
      t.string :notes
      t.datetime :price_expiration
    end
  end
end
