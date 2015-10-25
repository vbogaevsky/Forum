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

ActiveRecord::Schema.define(version: 20151013212347) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "boards", force: :cascade do |t|
    t.string   "name",          null: false
    t.string   "topick_id"
    t.integer  "topicks_count"
    t.integer  "post_id"
    t.integer  "posts_count"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  create_table "posts", force: :cascade do |t|
    t.string   "message",    null: false
    t.integer  "user_id",    null: false
    t.integer  "topick_id",  null: false
    t.integer  "board_id",   null: false
    t.datetime "updated_at", null: false
    t.datetime "created_at", null: false
  end

  create_table "topicks", force: :cascade do |t|
    t.string   "theme",       null: false
    t.integer  "post_id",     null: false
    t.integer  "posts_count"
    t.integer  "user_id",     null: false
    t.integer  "board_id",    null: false
    t.datetime "updated_at",  null: false
    t.datetime "created_at",  null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "handle",      null: false
    t.string   "email",       null: false
    t.string   "avatar"
    t.integer  "post_id"
    t.integer  "posts_count"
    t.integer  "topick_id"
    t.boolean  "moderator",   null: false
    t.boolean  "admin",       null: false
    t.datetime "updated_at",  null: false
    t.datetime "created_at",  null: false
  end

end
