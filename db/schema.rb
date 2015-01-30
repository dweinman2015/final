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

ActiveRecord::Schema.define(version: 0) do

  create_table "dogs", force: :cascade do |t|
    t.string  "name"
    t.string  "picture"
    t.string  "size"
    t.string  "breed"
    t.string  "chew_strength"
    t.integer "favorite_toy_id1"
    t.integer "favorite_toy_id2"
    t.integer "favorite_toy_id3"
    t.integer "favorite_toy_id4"
  end

  create_table "toyfeatures", force: :cascade do |t|
    t.integer "toy_id"
    t.string  "feature1"
    t.string  "feature2"
    t.string  "feature3"
    t.string  "feature4"
    t.string  "feature5"
  end

  add_index "toyfeatures", ["toy_id"], name: "index_toyfeatures_on_toy_id"

  create_table "toypictures", force: :cascade do |t|
    t.integer "toy_id"
    t.string  "picture1"
    t.string  "picture2"
    t.string  "picture3"
    t.string  "picture4"
    t.string  "picture5"
  end

  add_index "toypictures", ["toy_id"], name: "index_toypictures_on_toy_id"

  create_table "toyreviews", force: :cascade do |t|
    t.integer "toy_id"
    t.integer "user_id"
    t.integer "dog_id"
    t.text    "review"
    t.string  "review_date"
    t.integer "overall_rating"
    t.integer "durability_rating"
  end

  add_index "toyreviews", ["dog_id"], name: "index_toyreviews_on_dog_id"
  add_index "toyreviews", ["toy_id"], name: "index_toyreviews_on_toy_id"
  add_index "toyreviews", ["user_id"], name: "index_toyreviews_on_user_id"

# Could not dump table "toys" because of following NoMethodError
#   undefined method `[]' for nil:NilClass

  create_table "users", force: :cascade do |t|
    t.string  "email"
    t.string  "twitter"
    t.string  "facebook"
    t.string  "facebook_password"
    t.string  "google_id"
    t.string  "google_password"
    t.string  "username"
    t.string  "password"
    t.string  "picture"
    t.string  "address1"
    t.string  "address2"
    t.string  "city"
    t.string  "state"
    t.integer "zip"
    t.integer "dog_id1"
    t.integer "dog_id2"
    t.integer "dog_id3"
    t.integer "dog_id4"
    t.integer "dog_id5"
  end

  add_index "users", ["google_id"], name: "index_users_on_google_id"

end
