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

ActiveRecord::Schema.define(version: 2019_02_15_221552) do

  create_table "exercises", force: :cascade do |t|
    t.string "question"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_exercises_on_lesson_id"
  end

  create_table "lesson_texts", force: :cascade do |t|
    t.text "adv"
    t.text "int"
    t.text "sim"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_lesson_texts_on_lesson_id"
  end

  create_table "lesson_vital_facts", force: :cascade do |t|
    t.string "decision_date"
    t.string "decision"
    t.string "plaintiff"
    t.string "defendant"
    t.string "plaintiff_att"
    t.string "defendant_att"
    t.string "justices"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["justices"], name: "index_lesson_vital_facts_on_justices"
    t.index ["lesson_id"], name: "index_lesson_vital_facts_on_lesson_id"
  end

  create_table "lessons", force: :cascade do |t|
    t.string "name"
    t.string "front_tagline"
    t.string "page_tagline"
    t.string "header_img_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "opinions", force: :cascade do |t|
    t.string "link_url"
    t.string "header_text"
    t.string "desc_text"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_opinions_on_lesson_id"
  end

  create_table "oral_args", force: :cascade do |t|
    t.string "link_url"
    t.string "header_text"
    t.string "desc_text"
    t.integer "lesson_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["lesson_id"], name: "index_oral_args_on_lesson_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "login_name"
    t.string "password_digest"
    t.string "name"
    t.string "email"
    t.string "section_name"
    t.boolean "is_teacher", default: false
    t.boolean "is_admin", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
