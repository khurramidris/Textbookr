# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150324230134) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "authors", force: :cascade do |t|
    t.string   "au_lname"
    t.string   "au_fname"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "authors_books", id: false, force: :cascade do |t|
    t.integer "book_id",   null: false
    t.integer "author_id", null: false
  end

  create_table "availabilities", force: :cascade do |t|
    t.date     "day"
    t.time     "startTime"
    t.time     "endTime"
    t.string   "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books", force: :cascade do |t|
    t.integer  "ISBN"
    t.integer  "volume"
    t.string   "edition"
    t.string   "title"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "books_courses", id: false, force: :cascade do |t|
    t.integer "course_id", null: false
    t.integer "book_id",   null: false
  end

  create_table "courses", force: :cascade do |t|
    t.string   "department"
    t.integer  "courseNumber"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "messages", force: :cascade do |t|
    t.text     "content"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "posts", force: :cascade do |t|
    t.integer  "price"
    t.text     "description"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.integer  "book_id"
    t.integer  "user_account_id"
  end

  create_table "searches", force: :cascade do |t|
    t.string   "title"
    t.string   "isbn"
    t.string   "volume"
    t.string   "edition"
    t.string   "au_first"
    t.string   "au_last"
    t.string   "course"
    t.string   "department"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_accounts", force: :cascade do |t|
    t.string   "email"
    t.boolean  "isAdmin?"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
  end

<<<<<<< HEAD
=======
  add_foreign_key "availabilities", "posts", name: "post_id"
  add_foreign_key "messages", "posts", name: "post_id"
  add_foreign_key "messages", "user_accounts", name: "user_id"
  add_foreign_key "posts", "books", name: "book_id"
  add_foreign_key "posts", "user_accounts", name: "user_account_id"
>>>>>>> 981dceb96895d3bc893e6407ad57053d2dd29e28
end
