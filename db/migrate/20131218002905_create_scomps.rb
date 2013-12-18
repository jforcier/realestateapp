class CreateScomps < ActiveRecord::Migration
  def change
    create_table :scomps do |t|
      t.string :city
      t.string :address
      t.string :size
      t.string :sale_price
      t.string :cap_rate
      t.date :closing_date
      t.string :buyer
      t.string :seller
      t.string :building_type
      t.string :building_class
      t.string :sale_type
      t.string :floors
      t.string :buyer_broker
      t.string :buyer_agent
      t.string :listing_broker
      t.string :listing_agent
      t.text :notes

      t.timestamps
    end
  end
end
