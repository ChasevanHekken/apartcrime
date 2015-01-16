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

ActiveRecord::Schema.define(version: 20150115204035) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "crimes", force: :cascade do |t|
    t.integer "dc_dist"
    t.string  "sector"
    t.string  "dispatch_date_time"
    t.string  "dispatch_date"
    t.string  "dispatch_time"
    t.integer "hour"
    t.string  "dc_key"
    t.string  "location_block"
    t.integer "ucr_general"
    t.integer "objectid"
    t.string  "text_general_code"
    t.float   "point_x"
    t.float   "point_y"
    t.integer "shape"
  end

  create_table "users", force: :cascade do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "username"
    t.string   "token"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "provider"
    t.string   "twitter_id"
    t.string   "prof_image"
  end

end
