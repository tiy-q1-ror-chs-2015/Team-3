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

ActiveRecord::Schema.define(version: 20150130145046) do
=======

ActiveRecord::Schema.define(version: 20150130145046) do

ActiveRecord::Schema.define(version: 20150130143648) do

ActiveRecord::Schema.define(version: 20150130143554) do

ActiveRecord::Schema.define(version: 20150130143648) do
>>>>>>> 42ee94b964016040ee525c3927940c9ea4fa475e
=======
ActiveRecord::Schema.define(version: 20150130173207) do
>>>>>>> 3694e34d5051313f2f4be466d17d32bc7f6ad9a4

  create_table "comments", force: :cascade do |t|
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
    t.string   "title",            limit: 255
    t.text     "content",          limit: 65535
    t.integer  "commentable_id",   limit: 4
    t.string   "commentable_type", limit: 255
    t.integer  "user_id",          limit: 4
  end

  create_table "posts", force: :cascade do |t|
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
    t.string   "title",      limit: 255
    t.text     "content",    limit: 65535
    t.integer  "topic_id",   limit: 4
    t.integer  "user_id",    limit: 4
  end

  create_table "topics", force: :cascade do |t|
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.string   "title",        limit: 255
    t.text     "initial_post", limit: 65535
    t.integer  "user_id",      limit: 4
  end

  create_table "user_comments", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "comment_id", limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "user_posts", force: :cascade do |t|
    t.integer  "user_id",    limit: 4
    t.integer  "post_id",    limit: 4
    t.datetime "created_at",           null: false
    t.datetime "updated_at",           null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "email",                  limit: 255, default: "", null: false
    t.string   "encrypted_password",     limit: 255, default: "", null: false
    t.string   "reset_password_token",   limit: 255
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          limit: 4,   default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip",     limit: 255
    t.string   "last_sign_in_ip",        limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "nick_thing",             limit: 255
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

end
