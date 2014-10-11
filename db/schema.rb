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

ActiveRecord::Schema.define(version: 20141011171446) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cows", force: true do |t|
    t.decimal  "chuck_reserved",          precision: 8, scale: 2
    t.decimal  "chuck_total",             precision: 8, scale: 2
    t.decimal  "rib_reserved",            precision: 8, scale: 2
    t.decimal  "rib_total",               precision: 8, scale: 2
    t.decimal  "brisket_reserved",        precision: 8, scale: 2
    t.decimal  "brisket_total",           precision: 8, scale: 2
    t.decimal  "shank_reserved",          precision: 8, scale: 2
    t.decimal  "shank_total",             precision: 8, scale: 2
    t.decimal  "plate_reserved",          precision: 8, scale: 2
    t.decimal  "plate_total",             precision: 8, scale: 2
    t.decimal  "short_loin_reserved",     precision: 8, scale: 2
    t.decimal  "short_loin_total",        precision: 8, scale: 2
    t.decimal  "sirloin_reserved",        precision: 8, scale: 2
    t.decimal  "sirloin_total",           precision: 8, scale: 2
    t.decimal  "top_sirloin_reserved",    precision: 8, scale: 2
    t.decimal  "top_sirloin_total",       precision: 8, scale: 2
    t.decimal  "bottom_sirloin_reserved", precision: 8, scale: 2
    t.decimal  "bottom_sirloin_total",    precision: 8, scale: 2
    t.decimal  "tenderloin_reserved",     precision: 8, scale: 2
    t.decimal  "tenderloin_total",        precision: 8, scale: 2
    t.decimal  "round_reserved",          precision: 8, scale: 2
    t.decimal  "round_total",             precision: 8, scale: 2
    t.decimal  "flank_reserved",          precision: 8, scale: 2
    t.decimal  "flank_total",             precision: 8, scale: 2
    t.decimal  "tongue_reserved",         precision: 8, scale: 2
    t.decimal  "tongue_total",            precision: 8, scale: 2
    t.datetime "created_at"
    t.datetime "updated_at"
    t.decimal  "total_weight",            precision: 8, scale: 2
    t.string   "tag_number"
  end

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.text     "address"
    t.integer  "user_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
