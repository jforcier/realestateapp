class CreateListings < ActiveRecord::Migration
  def change
    create_table :listings do |t|
      t.string :city
      t.string :address
      t.string :suite
      t.string :size
      t.string :building_type
      t.string :building_class
      t.string :asking_rate
      t.string :opex
      t.string :lease_type
      t.string :brokerage
      t.text :notes

      t.timestamps
    end
  end
end
