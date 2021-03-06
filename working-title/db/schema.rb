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

ActiveRecord::Schema.define(version: 2022_01_24_232400) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "entrants", force: :cascade do |t|
    t.bigint "tournament_id"
    t.bigint "user_id"
    t.boolean "organizer"
    t.index ["tournament_id"], name: "index_entrants_on_tournament_id"
    t.index ["user_id"], name: "index_entrants_on_user_id"
  end

  create_table "matches", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "match1"
    t.string "match2"
    t.string "match3"
    t.string "match4"
    t.string "match5"
    t.string "match6"
    t.string "match7"
    t.bigint "tournament_id"
    t.index ["tournament_id"], name: "index_matches_on_tournament_id"
  end

  create_table "tournaments", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "game"
    t.string "date"
    t.string "time"
    t.string "skill"
    t.string "region"
    t.text "description"
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "username"
    t.string "email"
    t.string "first_name"
    t.string "last_name"
    t.string "password_digest"
  end

  add_foreign_key "matches", "tournaments"
end
