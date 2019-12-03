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

ActiveRecord::Schema.define(version: 2019_12_03_094620) do

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

  create_table "order_items", force: :cascade do |t|
    t.bigint "order_id"
    t.bigint "veggy_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["order_id"], name: "index_order_items_on_order_id"
    t.index ["veggy_id"], name: "index_order_items_on_veggy_id"
  end

  create_table "orders", force: :cascade do |t|
    t.string "state"
    t.integer "amount_cents_cents", default: 0, null: false
    t.string "checkout_session_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_orders_on_user_id"
  end

  create_table "planted_veggies", force: :cascade do |t|
    t.bigint "planter_id"
    t.date "sowing_day"
    t.date "planting_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "veggy_id"
    t.boolean "status", default: false
    t.index ["planter_id"], name: "index_planted_veggies_on_planter_id"
    t.index ["veggy_id"], name: "index_planted_veggies_on_veggy_id"
  end

  create_table "planters", force: :cascade do |t|
    t.bigint "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "size"
    t.string "color"
    t.string "sun"
    t.index ["user_id"], name: "index_planters_on_user_id"
  end

  create_table "to_do_templates", force: :cascade do |t|
    t.text "description"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "to_dos", force: :cascade do |t|
    t.bigint "to_do_template_id"
    t.date "due_at"
    t.date "completed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "planted_veggy_id"
    t.boolean "done", default: false
    t.index ["planted_veggy_id"], name: "index_to_dos_on_planted_veggy_id"
    t.index ["to_do_template_id"], name: "index_to_dos_on_to_do_template_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "address"
    t.integer "level", default: 1
    t.string "authentication_token", limit: 30
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "veggies", force: :cascade do |t|
    t.string "name"
    t.integer "seed_level"
    t.date "sowing_start_date"
    t.date "sowing_end_date"
    t.date "planting_start_date"
    t.date "planting_end_date"
    t.integer "growing_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "nutritional_infos", default: "more infos soon !"
    t.string "description"
    t.string "category"
    t.integer "thining_delay"
    t.string "sun_need"
    t.integer "watering_period"
    t.integer "price_cents", default: 0, null: false
    t.string "season"
  end

  create_table "veggy_to_dos", force: :cascade do |t|
    t.bigint "to_do_template_id"
    t.integer "periodicity"
    t.boolean "initial"
    t.integer "after_planting_delay"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "veggy_id"
    t.index ["to_do_template_id"], name: "index_veggy_to_dos_on_to_do_template_id"
    t.index ["veggy_id"], name: "index_veggy_to_dos_on_veggy_id"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "order_items", "orders"
  add_foreign_key "order_items", "veggies"
  add_foreign_key "orders", "users"
  add_foreign_key "planted_veggies", "planters"
  add_foreign_key "planters", "users"
  add_foreign_key "to_dos", "to_do_templates"
  add_foreign_key "veggy_to_dos", "to_do_templates"
end
