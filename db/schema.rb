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

ActiveRecord::Schema[7.0].define(version: 2023_11_18_165102) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "companies", force: :cascade do |t|
    t.string "name"
    t.bigint "owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["owner_id"], name: "index_companies_on_owner_id"
  end

  create_table "company_processes", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_company_processes_on_company_id"
  end

  create_table "item_flows", force: :cascade do |t|
    t.bigint "step_id", null: false
    t.integer "status"
    t.bigint "item_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_item_flows_on_item_id"
    t.index ["step_id"], name: "index_item_flows_on_step_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "name"
    t.string "model"
    t.integer "status"
    t.bigint "process_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["process_id"], name: "index_items_on_process_id"
  end

  create_table "materials", force: :cascade do |t|
    t.float "size"
    t.float "weight"
    t.integer "material_type"
    t.bigint "provider_id", null: false
    t.bigint "warehouse_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["provider_id"], name: "index_materials_on_provider_id"
    t.index ["warehouse_id"], name: "index_materials_on_warehouse_id"
  end

  create_table "process_steps", force: :cascade do |t|
    t.string "name"
    t.text "description"
    t.integer "step_order"
    t.bigint "company_process_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_process_id"], name: "index_process_steps_on_company_process_id"
  end

  create_table "providers", force: :cascade do |t|
    t.string "name"
    t.string "phone"
    t.string "email"
    t.text "info"
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_providers_on_company_id"
  end

  create_table "takes", force: :cascade do |t|
    t.float "size"
    t.float "weight"
    t.bigint "material_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["material_id"], name: "index_takes_on_material_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "company_id"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "warehouses", force: :cascade do |t|
    t.string "address"
    t.float "capacity"
    t.bigint "responsible_id", null: false
    t.bigint "company_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["company_id"], name: "index_warehouses_on_company_id"
    t.index ["responsible_id"], name: "index_warehouses_on_responsible_id"
  end

  add_foreign_key "companies", "users", column: "owner_id"
  add_foreign_key "company_processes", "companies"
  add_foreign_key "item_flows", "items"
  add_foreign_key "item_flows", "process_steps", column: "step_id"
  add_foreign_key "items", "company_processes", column: "process_id"
  add_foreign_key "materials", "providers"
  add_foreign_key "materials", "warehouses"
  add_foreign_key "process_steps", "company_processes"
  add_foreign_key "providers", "companies"
  add_foreign_key "takes", "materials"
  add_foreign_key "warehouses", "companies"
  add_foreign_key "warehouses", "users", column: "responsible_id"
end
