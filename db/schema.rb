# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.0].define(version: 2025_07_06_045400) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "pg_catalog.plpgsql"

  create_table "assets", force: :cascade do |t|
    t.string "asset_number"
    t.string "make"
    t.string "model"
    t.string "location"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "inventory_items", force: :cascade do |t|
    t.string "item_number"
    t.string "name"
    t.text "description"
    t.integer "quantity"
    t.decimal "unit_cost"
    t.string "location"
    t.integer "minimum_quantity"
    t.string "vendor"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_number"], name: "index_inventory_items_on_item_number", unique: true
  end

  create_table "preventive_maintenances", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "frequency"
    t.datetime "start_date"
    t.datetime "due_date"
    t.integer "estimated_time"
    t.integer "actual_time"
    t.bigint "asset_id", null: false
    t.bigint "user_id", null: false
    t.string "pm_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_preventive_maintenances_on_asset_id"
    t.index ["pm_number"], name: "index_preventive_maintenances_on_pm_number", unique: true
    t.index ["user_id"], name: "index_preventive_maintenances_on_user_id"
  end

  create_table "teams", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "encrypted_password"
    t.string "role"
    t.bigint "team_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["team_id"], name: "index_users_on_team_id"
  end

  create_table "work_orders", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "status"
    t.string "priority"
    t.datetime "scheduled_date"
    t.datetime "completed_date"
    t.integer "estimated_time"
    t.integer "actual_time"
    t.bigint "asset_id", null: false
    t.bigint "user_id", null: false
    t.string "work_order_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["asset_id"], name: "index_work_orders_on_asset_id"
    t.index ["user_id"], name: "index_work_orders_on_user_id"
    t.index ["work_order_number"], name: "index_work_orders_on_work_order_number", unique: true
  end

  add_foreign_key "preventive_maintenances", "assets"
  add_foreign_key "preventive_maintenances", "users"
  add_foreign_key "users", "teams"
  add_foreign_key "work_orders", "assets"
  add_foreign_key "work_orders", "users"
end
