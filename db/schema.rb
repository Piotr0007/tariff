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

ActiveRecord::Schema.define(version: 2018_06_18_220625) do

  create_table "courses", force: :cascade do |t|
    t.integer "each_people"
    t.string "from_to"
    t.string "adress"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "drivers", force: :cascade do |t|
    t.string "name", limit: 15
    t.string "lastname", limit: 30
    t.date "brithday"
    t.string "id_card_driver", limit: 10
    t.string "nationality", limit: 30
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email"
    t.index ["email"], name: "index_drivers_on_email"
  end

  create_table "users", force: :cascade do |t|
    t.string "name", limit: 15
    t.string "lastname", limit: 30
    t.string "email", limit: 30, null: false
    t.integer "phone", limit: 15, null: false
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["id"], name: "index_users_on_id"
  end

end
