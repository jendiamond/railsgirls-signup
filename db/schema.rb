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

ActiveRecord::Schema.define(version: 20160816070851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "questions", force: :cascade do |t|
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
    t.boolean  "newbie"
    t.boolean  "html_css"
    t.boolean  "tutorials"
    t.boolean  "study_group"
    t.boolean  "program"
    t.boolean  "website"
    t.boolean  "work"
    t.boolean  "bootcamp"
    t.boolean  "compsci"
    t.boolean  "rlsgrl_rlsbrg"
    t.string   "continue"
    t.string   "support"
    t.string   "experience"
    t.integer  "user_id"
  end

  create_table "tutorials", force: :cascade do |t|
    t.boolean  "try_ruby"
    t.boolean  "terminal"
    t.boolean  "try_git"
    t.boolean  "html_css"
    t.integer  "user_id"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "image_file_name"
    t.string   "image_content_type"
    t.integer  "image_file_size"
    t.datetime "image_updated_at"
    t.string   "tryruby_image_file_name"
    t.string   "tryruby_image_content_type"
    t.integer  "tryruby_image_file_size"
    t.datetime "tryruby_image_updated_at"
    t.string   "terminal_image_file_name"
    t.string   "terminal_image_content_type"
    t.integer  "terminal_image_file_size"
    t.datetime "terminal_image_updated_at"
    t.string   "trygit_image_file_name"
    t.string   "trygit_image_content_type"
    t.integer  "trygit_image_file_size"
    t.datetime "trygit_image_updated_at"
    t.string   "htmlcss_image_file_name"
    t.string   "htmlcss_image_content_type"
    t.integer  "htmlcss_image_file_size"
    t.datetime "htmlcss_image_updated_at"
    t.index ["user_id"], name: "index_tutorials_on_user_id", using: :btree
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

  add_foreign_key "tutorials", "users"
end
