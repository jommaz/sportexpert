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

ActiveRecord::Schema.define(version: 20150430152753) do

  create_table "comments", force: :cascade do |t|
    t.string   "comment"
    t.integer  "credible"
    t.datetime "timestamp"
  end

  create_table "postcomment", id: false, force: :cascade do |t|
    t.integer "posts_id"
    t.integer "comments_id"
  end

  add_index "postcomment", ["comments_id"], name: "index_postcomment_on_comments_id"
  add_index "postcomment", ["posts_id"], name: "index_postcomment_on_posts_id"

  create_table "posts", force: :cascade do |t|
    t.string   "post"
    t.datetime "timestamp"
    t.string   "comments"
    t.integer  "credible"
  end

  create_table "profile", force: :cascade do |t|
    t.string  "bio"
    t.string  "favorite"
    t.boolean "expert"
    t.integer "numpost"
    t.integer "followers"
    t.integer "followed"
    t.string  "location"
  end

  create_table "userpost", id: false, force: :cascade do |t|
    t.integer "users_id"
    t.integer "posts_id"
  end

  add_index "userpost", ["posts_id"], name: "index_userpost_on_posts_id"
  add_index "userpost", ["users_id"], name: "index_userpost_on_users_id"

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password"
  end

  create_table "userscomments", id: false, force: :cascade do |t|
    t.integer "users_id"
    t.integer "comments_id"
  end

  add_index "userscomments", ["comments_id"], name: "index_userscomments_on_comments_id"
  add_index "userscomments", ["users_id"], name: "index_userscomments_on_users_id"

end
