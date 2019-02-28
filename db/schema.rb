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

ActiveRecord::Schema.define(version: 2019_02_28_045946) do

  create_table "orders", force: :cascade do |t|
    t.string "prefix"
    t.string "awbnum"
    t.string "terminal_charge"
    t.string "pieces"
    t.string "perishable_status"
    t.string "pieces_found"
    t.string "partial_release"
    t.string "located_time"
    t.string "arranged_time"
    t.string "delivered_by"
    t.string "delivery_time"
    t.datetime "created_at"
  end

end
