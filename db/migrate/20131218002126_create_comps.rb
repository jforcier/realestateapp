class CreateComps < ActiveRecord::Migration
  def change
    create_table :comps do |t|
      t.string :city
      t.string :address
      t.string :suite
      t.string :size
      t.string :start_rate
      t.string :effective_rate
      t.string :opex
      t.date :lease_signed
      t.date :lease_start
      t.date :lease_expiration
      t.string :tenant
      t.string :landlord
      t.string :procurring_broker
      t.string :procurring_agent
      t.string :listing_broker
      t.string :listing_agent

      t.timestamps
    end
  end
end
