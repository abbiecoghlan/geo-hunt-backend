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

ActiveRecord::Schema.define(version: 2021_02_16_010447) do

  create_table "attempts", force: :cascade do |t|
    t.string "status"
    t.float "time_taken"
    t.integer "puzzle_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["puzzle_id"], name: "index_attempts_on_puzzle_id"
    t.index ["user_id"], name: "index_attempts_on_user_id"
  end

  create_table "clues", force: :cascade do |t|
    t.text "hint"
    t.integer "puzzle_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["puzzle_id"], name: "index_clues_on_puzzle_id"
  end

  create_table "puzzles", force: :cascade do |t|
    t.string "title"
    t.string "location_name"
    t.float "latitude"
    t.float "longitude"
    t.string "difficulty"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "name"
    t.integer "age"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "attempts", "puzzles"
  add_foreign_key "attempts", "users"
  add_foreign_key "clues", "puzzles"
end
