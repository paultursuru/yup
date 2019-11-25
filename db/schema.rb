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

ActiveRecord::Schema.define(version: 2019_11_25_172542) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "planted_veggies", force: :cascade do |t|
    t.bigint "planter_id"
    t.date "sowing_day"
    t.date "planting_day"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "veggy_id"
    t.index ["planter_id"], name: "index_planted_veggies_on_planter_id"
    t.index ["veggy_id"], name: "index_planted_veggies_on_veggy_id"
  end

  create_table "planters", force: :cascade do |t|
    t.bigint "user_id"
    t.integer "size"
    t.string "orientation"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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
    t.boolean "done"
    t.date "due_at"
    t.date "completed_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "planted_veggy_id"
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
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "veggies", force: :cascade do |t|
    t.string "name"
    t.string "sun_orientation"
    t.integer "seed_level"
    t.date "sowing_start_date"
    t.date "sowing_end_date"
    t.date "planting_start_date"
    t.date "planting_end_date"
    t.integer "growing_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
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

  add_foreign_key "planted_veggies", "planters"
  add_foreign_key "planters", "users"
  add_foreign_key "to_dos", "to_do_templates"
  add_foreign_key "veggy_to_dos", "to_do_templates"
end
