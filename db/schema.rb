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

ActiveRecord::Schema.define(version: 2018_10_31_163113) do

  create_table "points", force: :cascade do |t|
    t.integer "user_id"
    t.integer "p_a"
    t.integer "p_c"
    t.integer "p_o"
    t.integer "p_n"
    t.integer "p_e"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_points_on_user_id"
  end

  create_table "quizzes", force: :cascade do |t|
    t.string "content"
    t.string "quiz_type"
    t.integer "mode"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "results", force: :cascade do |t|
    t.string "name"
    t.string "low"
    t.string "medium"
    t.string "high"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text "advice"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "gender"
  end

end
