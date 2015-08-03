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

ActiveRecord::Schema.define(version: 20150803135223) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "user_roles", force: :cascade do |t|
    t.string   "name"
    t.boolean  "user_add"
    t.boolean  "price_edit"
    t.boolean  "item_edit"
    t.boolean  "order"
    t.boolean  "user_profile"
    t.boolean  "comment"
    t.boolean  "cart"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "login"
    t.string   "pass"
    t.integer  "user_role_id"
    t.string   "name"
    t.string   "surname"
    t.string   "phone"
    t.time     "call_time_from"
    t.time     "call_time_till"
    t.string   "email"
    t.string   "address"
    t.string   "comment"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "users", ["user_role_id"], name: "index_users_on_user_role_id", using: :btree

  add_foreign_key "users", "user_roles"
end
