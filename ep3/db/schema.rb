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

ActiveRecord::Schema.define(version: 2018_12_02_153530) do

  create_table "clients", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.integer "condition"
    t.float "weight"
    t.float "height"
    t.integer "age"
    t.index ["email"], name: "index_clients_on_email", unique: true
    t.index ["reset_password_token"], name: "index_clients_on_reset_password_token", unique: true
  end

  create_table "clients_exercises", id: false, force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "exercise_id", null: false
    t.integer "duration"
    t.boolean "status"
  end

  create_table "clients_meals", id: false, force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "meal_id", null: false
    t.string "day"
  end

  create_table "clients_trainers", id: false, force: :cascade do |t|
    t.integer "client_id", null: false
    t.integer "trainer_id", null: false
  end

  create_table "exercises", force: :cascade do |t|
    t.string "desc_exercise"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods", force: :cascade do |t|
    t.string "desc_food"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "foods_meals", id: false, force: :cascade do |t|
    t.integer "food_id", null: false
    t.integer "meal_id", null: false
  end

  create_table "meals", force: :cascade do |t|
    t.string "desc_meal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "menus", force: :cascade do |t|
    t.string "day"
    t.integer "client_id"
    t.integer "meal_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_menus_on_client_id"
    t.index ["meal_id"], name: "index_menus_on_meal_id"
  end

  create_table "routines", force: :cascade do |t|
    t.integer "duration"
    t.boolean "status"
    t.string "day"
    t.integer "client_id"
    t.integer "exercise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["client_id"], name: "index_routines_on_client_id"
    t.index ["exercise_id"], name: "index_routines_on_exercise_id"
  end

  create_table "trainers", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "formation"
    t.string "name"
    t.string "institution"
    t.integer "age"
    t.index ["email"], name: "index_trainers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_trainers_on_reset_password_token", unique: true
  end

end
