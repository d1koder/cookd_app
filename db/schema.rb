# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_12_01_024338) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "chef_cuisines", force: :cascade do |t|
    t.bigint "chef_id", null: false
    t.bigint "cuisine_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chef_id"], name: "index_chef_cuisines_on_chef_id"
    t.index ["cuisine_id"], name: "index_chef_cuisines_on_cuisine_id"
  end

  create_table "chef_restaurants", force: :cascade do |t|
    t.bigint "chef_id", null: false
    t.bigint "restaurant_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chef_id"], name: "index_chef_restaurants_on_chef_id"
    t.index ["restaurant_id"], name: "index_chef_restaurants_on_restaurant_id"
  end

  create_table "chefs", force: :cascade do |t|
    t.bigint "profile_id", null: false
    t.float "year_experience"
    t.float "price"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profile_id"], name: "index_chefs_on_profile_id"
  end

  create_table "cuisines", force: :cascade do |t|
    t.string "country"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "orders", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.bigint "chef_id", null: false
    t.integer "pax_number"
    t.bigint "cuisine_id", null: false
    t.float "duration"
    t.string "booking_datetime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["chef_id"], name: "index_orders_on_chef_id"
    t.index ["cuisine_id"], name: "index_orders_on_cuisine_id"
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "profiles", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "home_address"
    t.string "mobile_number"
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_profiles_on_user_id"
  end

  create_table "restaurants", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.bigint "order_id", null: false
    t.float "cost"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["order_id"], name: "index_transactions_on_order_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "chef_cuisines", "chefs"
  add_foreign_key "chef_cuisines", "cuisines"
  add_foreign_key "chef_restaurants", "chefs"
  add_foreign_key "chef_restaurants", "restaurants"
  add_foreign_key "chefs", "profiles"
  add_foreign_key "orders", "chefs"
  add_foreign_key "orders", "cuisines"
  add_foreign_key "orders", "users"
  add_foreign_key "profiles", "users"
  add_foreign_key "transactions", "orders"
end
