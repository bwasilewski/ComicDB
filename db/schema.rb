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

ActiveRecord::Schema.define(version: 2022_11_07_021158) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "issues", force: :cascade do |t|
    t.string "api_detail_url"
    t.date "cover_date"
    t.text "deck"
    t.text "description"
    t.string "image"
    t.string "issue_number"
    t.string "name"
    t.date "store_date"
    t.integer "volume"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "series", force: :cascade do |t|
    t.string "api_detail_url"
    t.integer "count_of_episodes"
    t.datetime "date_last_updated"
    t.text "deck"
    t.text "description"
    t.string "api_id"
    t.string "image"
    t.string "name"
    t.string "publisher"
    t.string "site_detail_url"
    t.string "start_year"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "aliases", default: [], array: true
    t.string "character_credits", default: [], array: true
  end

  create_table "users", force: :cascade do |t|
    t.string "email", null: false
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.binary "avatar"
    t.text "profile_text"
    t.string "display_name"
  end

end
