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

ActiveRecord::Schema.define(version: 20160814064902) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questions", force: :cascade do |t|
    t.boolean  "boolean_question"
    t.string   "string_question"
    t.text     "text_question"
    t.integer  "integer_question"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "phone"
    t.string   "zip_code"
    t.string   "twitter_handle"
    t.string   "github_user_name"
    t.boolean  "over_21"
    t.integer  "age"
    t.string   "operating_system"
    t.datetime "workshop"
    t.string   "rating"
    t.string   "coach"
    t.string   "pair"
    t.boolean  "accepted"
    t.boolean  "attended"
    t.boolean  "phase_five_coach"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

end
