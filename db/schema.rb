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

ActiveRecord::Schema.define(version: 20150501210229) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "favorites", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "recipe_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "favorites", ["recipe_id"], name: "index_favorites_on_recipe_id", using: :btree
  add_index "favorites", ["user_id"], name: "index_favorites_on_user_id", using: :btree

  create_table "orders", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "user_id"
    t.integer  "product_id"
  end

  add_index "orders", ["product_id"], name: "index_orders_on_product_id", using: :btree
  add_index "orders", ["user_id"], name: "index_orders_on_user_id", using: :btree

  create_table "places", force: :cascade do |t|
    t.integer  "order_id"
    t.integer  "user_id"
    t.integer  "store_id"
    t.integer  "product_id"
    t.integer  "quantity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "places", ["order_id"], name: "index_places_on_order_id", using: :btree
  add_index "places", ["product_id"], name: "index_places_on_product_id", using: :btree
  add_index "places", ["store_id"], name: "index_places_on_store_id", using: :btree
  add_index "places", ["user_id"], name: "index_places_on_user_id", using: :btree

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.string   "category"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "store_id"
    t.string   "image_url"
    t.float    "price"
  end

  add_index "products", ["store_id"], name: "index_products_on_store_id", using: :btree

  create_table "recipes", force: :cascade do |t|
    t.string   "name"
    t.string   "taste"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sells", force: :cascade do |t|
    t.integer  "store_id"
    t.integer  "product_id"
    t.float    "price"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "sells", ["product_id"], name: "index_sells_on_product_id", using: :btree
  add_index "sells", ["store_id"], name: "index_sells_on_store_id", using: :btree

  create_table "stores", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.float    "lng"
    t.float    "lat"
    t.string   "address"
    t.string   "image_url"
  end

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.datetime "created_at",                      null: false
    t.datetime "updated_at",                      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
    t.boolean  "admin",           default: false
    t.float    "lng"
    t.float    "lat"
    t.string   "address"
  end

  create_table "uses", force: :cascade do |t|
    t.integer  "recipe_id"
    t.integer  "product_id"
    t.string   "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "uses", ["product_id"], name: "index_uses_on_product_id", using: :btree
  add_index "uses", ["recipe_id"], name: "index_uses_on_recipe_id", using: :btree

  add_foreign_key "favorites", "recipes"
  add_foreign_key "favorites", "users"
  add_foreign_key "orders", "products"
  add_foreign_key "orders", "users"
  add_foreign_key "places", "orders"
  add_foreign_key "places", "products"
  add_foreign_key "places", "stores"
  add_foreign_key "places", "users"
  add_foreign_key "products", "stores"
  add_foreign_key "sells", "products"
  add_foreign_key "sells", "stores"
  add_foreign_key "uses", "products"
  add_foreign_key "uses", "recipes"
end
