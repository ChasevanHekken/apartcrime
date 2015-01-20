ActiveRecord::Schema.define(version: 20150115204035) do

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
