class CreateSlistings < ActiveRecord::Migration
  def change
    create_table :slistings do |t|
      t.string :city
      t.string :address
      t.string :size
      t.string :price
      t.string :building_type
      t.string :building_class
      t.string :sale_type
      t.string :floors
      t.string :parking_string
      t.string :brokerage
      t.text :notes

      t.timestamps
    end
  end
end
