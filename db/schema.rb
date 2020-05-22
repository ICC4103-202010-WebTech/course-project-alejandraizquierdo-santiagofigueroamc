# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_05_22_180728) do

# Could not dump table "comments" because of following StandardError
#   Unknown type 'event' for column 'reference'

# Could not dump table "event_dates" because of following StandardError
#   Unknown type 'event' for column 'reference'

  create_table "events", force: :cascade do |t|
    t.string "Title", limit: 30
    t.string "Address", limit: 100
    t.string "Description", limit: 200
    t.boolean "SelectManual"
    t.date "FinalDate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "messages", force: :cascade do |t|
    t.date "Date"
    t.integer "SenderID"
    t.integer "RecieverID"
    t.string "Information"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer "SenderID"
    t.string "Content", limit: 250
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "username"
    t.string "email"
    t.string "password"
    t.datetime "last_signed"
    t.text "biography"
    t.string "address"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
