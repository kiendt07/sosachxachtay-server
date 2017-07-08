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

ActiveRecord::Schema.define(version: 20170708155335) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "products", force: :cascade do |t|
    t.integer  "category_id"
    t.string   "attr1"
    t.string   "attr2"
    t.string   "photo_url"
    t.string   "name"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["category_id"], name: "index_products_on_category_id", using: :btree
  end

  create_table "selling_stores", force: :cascade do |t|
    t.string   "store_name"
    t.integer  "product_id"
    t.string   "url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["product_id"], name: "index_selling_stores_on_product_id", using: :btree
  end

  create_table "selling_versions", force: :cascade do |t|
    t.integer  "selling_store_id"
    t.string   "color"
    t.string   "condition"
    t.string   "storage"
    t.decimal  "price",            precision: 8, scale: 2
    t.datetime "created_at",                               null: false
    t.datetime "updated_at",                               null: false
    t.index ["selling_store_id"], name: "index_selling_versions_on_selling_store_id", using: :btree
  end

  add_foreign_key "products", "categories"
  add_foreign_key "selling_stores", "products"
  add_foreign_key "selling_versions", "selling_stores"
end
