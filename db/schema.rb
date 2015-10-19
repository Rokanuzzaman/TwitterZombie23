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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20150824043958) do

  create_table "tweets", :force => true do |t|
    t.integer  "tweet_id"
    t.integer  "user_id"
    t.integer  "tweet_status"
    t.date     "tweet_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_follows", :force => true do |t|
    t.integer  "user_id"
    t.integer  "foolwer_id"
    t.date     "following_date"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "user_infos", :force => true do |t|
    t.integer  "user_id"
    t.string   "email"
    t.string   "full_name"
    t.string   "nickname"
    t.date     "date_of_birth"
    t.string   "gender"
    t.string   "profile_image_url"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
