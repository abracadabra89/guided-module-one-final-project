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

ActiveRecord::Schema.define(version: 20190912190036) do

  create_table "charities", force: :cascade do |t|
    t.string  "name"
    t.string  "location"
    t.integer "founding_year"
    t.string  "description"
    t.string  "category"
  end

  create_table "donations", force: :cascade do |t|
    t.integer "charity_id"
    t.integer "donor_id"
    t.integer "amount"
    t.integer "average"
  end

  create_table "donors", force: :cascade do |t|
    t.string "name"
    t.string "location"
  end

end
