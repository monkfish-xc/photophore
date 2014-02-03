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

ActiveRecord::Schema.define(version: 20140203033328) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "accounts", id: false, force: true do |t|
    t.string   "id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "accounts", ["id"], name: "index_accounts_on_id", unique: true, using: :btree

  create_table "photos", id: false, force: true do |t|
    t.string   "id"
    t.string   "account_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "photos", ["id"], name: "index_photos_on_id", unique: true, using: :btree

end
