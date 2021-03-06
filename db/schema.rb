# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140112233515) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "comps", force: true do |t|
    t.string   "city"
    t.string   "address"
    t.string   "suite"
    t.string   "size"
    t.string   "start_rate"
    t.string   "effective_rate"
    t.string   "opex"
    t.date     "lease_signed"
    t.date     "lease_start"
    t.date     "lease_expiration"
    t.string   "tenant"
    t.string   "landlord"
    t.string   "procurring_broker"
    t.string   "procurring_agent"
    t.string   "listing_broker"
    t.string   "listing_agent"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "listings", force: true do |t|
    t.string   "city"
    t.string   "address"
    t.string   "suite"
    t.string   "size"
    t.string   "building_type"
    t.string   "building_class"
    t.string   "asking_rate"
    t.string   "opex"
    t.string   "lease_type"
    t.string   "brokerage"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  add_index "listings", ["user_id"], name: "index_listings_on_user_id", using: :btree

  create_table "scomps", force: true do |t|
    t.string   "city"
    t.string   "address"
    t.string   "size"
    t.string   "sale_price"
    t.string   "cap_rate"
    t.date     "closing_date"
    t.string   "buyer"
    t.string   "seller"
    t.string   "building_type"
    t.string   "building_class"
    t.string   "sale_type"
    t.string   "floors"
    t.string   "buyer_broker"
    t.string   "buyer_agent"
    t.string   "listing_broker"
    t.string   "listing_agent"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "slistings", force: true do |t|
    t.string   "city"
    t.string   "address"
    t.string   "size"
    t.string   "price"
    t.string   "building_type"
    t.string   "building_class"
    t.string   "sale_type"
    t.string   "floors"
    t.string   "parking_string"
    t.string   "brokerage"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "brokerage"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
