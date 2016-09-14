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

ActiveRecord::Schema.define(version: 20160914074648) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "answers", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "question_id"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "coaches", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "twitter"
    t.string   "github"
    t.string   "job"
    t.string   "student1"
    t.string   "student2"
    t.boolean  "attended_as_student"
    t.string   "coached_april_13"
    t.string   "coached_march_14"
    t.string   "coached_april_15"
    t.string   "coached_august_15"
    t.string   "coached_march_16"
    t.text     "notes"
    t.datetime "created_at",          null: false
    t.datetime "updated_at",          null: false
    t.string   "days"
    t.string   "operating_system"
    t.string   "phone"
    t.string   "spokeo"
  end

  create_table "members", force: :cascade do |t|
    t.string   "username"
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.string   "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string   "unconfirmed_email"
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.boolean  "admin"
    t.index ["email"], name: "index_members_on_email", unique: true, using: :btree
    t.index ["reset_password_token"], name: "index_members_on_reset_password_token", unique: true, using: :btree
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
