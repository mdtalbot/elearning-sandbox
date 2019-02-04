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

ActiveRecord::Schema.define(version: 2018_12_23_222725) do

  create_table "lessons", force: :cascade do |t|
    t.string "name"
    t.string "short_desc"
    t.text "long_desc"
    t.string "grade_level"
    t.string "subject"
    t.string "decided_on"
    t.string "decision"
    t.string "justices"
    t.string "plaintiff"
    t.string "defendant"
    t.string "plaintiff_att"
    t.string "defendant_att"
    t.text "lesson_text_diff_adv"
    t.text "lesson_text_diff_int"
    t.text "lesson_text_diff_sim"
    t.string "oral_arg_link_one"
    t.string "oral_arg_link_two"
    t.string "oral_arg_text_one"
    t.string "oral_arg_text_two"
    t.string "question_one"
    t.string "question_two"
    t.string "question_three"
    t.string "question_four"
    t.string "question_five"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["justices"], name: "index_lessons_on_justices"
  end

  create_table "users", force: :cascade do |t|
    t.string "login_name"
    t.string "password_digest"
    t.string "name"
    t.string "email"
    t.boolean "is_teacher"
    t.boolean "is_admin"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
