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

ActiveRecord::Schema.define(version: 20190728151601) do

  create_table "admins", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "role"
    t.string "username"
    t.index ["email"], name: "index_admins_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admins_on_reset_password_token", unique: true
  end

  create_table "categories", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "category_details", force: :cascade do |t|
    t.integer "Product_id"
    t.integer "Cateogry_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Cateogry_id"], name: "index_category_details_on_Cateogry_id"
    t.index ["Product_id"], name: "index_category_details_on_Product_id"
  end

  create_table "order_details", force: :cascade do |t|
    t.integer "Order_id"
    t.string "first_name"
    t.string "last_name"
    t.decimal "sub_total"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Order_id"], name: "index_order_details_on_Order_id"
  end

  create_table "orders", force: :cascade do |t|
    t.integer "Product_id"
    t.integer "quantity"
    t.decimal "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["Product_id"], name: "index_orders_on_Product_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "title"
    t.decimal "price"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
