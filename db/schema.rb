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

ActiveRecord::Schema[8.0].define(version: 2025_04_21_010950) do
  create_table "cases", force: :cascade do |t|
    t.string "description"
    t.string "admission_identifier"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "charts", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "courts", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "rooms", force: :cascade do |t|
    t.string "description"
    t.integer "court_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["court_id"], name: "index_rooms_on_court_id"
  end

  create_table "schedules", force: :cascade do |t|
    t.date "date"
    t.integer "chart_id", null: false
    t.integer "room_id", null: false
    t.integer "case_id", null: false
    t.string "rapporteur"
    t.string "judge"
    t.string "attorney"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["case_id"], name: "index_schedules_on_case_id"
    t.index ["chart_id"], name: "index_schedules_on_chart_id"
    t.index ["room_id"], name: "index_schedules_on_room_id"
  end

  add_foreign_key "rooms", "courts"
  add_foreign_key "schedules", "cases"
  add_foreign_key "schedules", "charts"
  add_foreign_key "schedules", "rooms"
end
