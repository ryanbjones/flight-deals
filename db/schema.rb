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

ActiveRecord::Schema.define(version: 20150801226530) do

  create_table "flights", force: :cascade do |t|
    t.integer  "originating_location_id"
    t.integer  "destination_location_id"
    t.integer  "price"
    t.string   "available_months"
    t.integer  "minimum_duration"
    t.string   "link_to_deal"
    t.date     "posted_on"
    t.boolean  "is_international"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  create_table "locations", force: :cascade do |t|
    t.string   "city"
    t.string   "country"
    t.string   "region"
    t.string   "continent"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
