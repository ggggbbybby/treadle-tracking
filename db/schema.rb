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

ActiveRecord::Schema.define(version: 20141022233743) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "drafts", force: true do |t|
    t.string   "draft_name"
    t.integer  "shafts"
    t.integer  "threading_id"
    t.integer  "treadling_id"
    t.integer  "tieup_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "threadings", force: true do |t|
    t.text     "sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tieups", force: true do |t|
    t.text     "sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treadlings", force: true do |t|
    t.text     "sequence"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "drafts", "threadings", name: "drafts_threading_id_fk"
  add_foreign_key "drafts", "tieups", name: "drafts_tieup_id_fk"
  add_foreign_key "drafts", "treadlings", name: "drafts_treadling_id_fk"

end
