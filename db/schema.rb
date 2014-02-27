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

ActiveRecord::Schema.define(version: 20140224045733) do

  create_table "code_climates", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "score"
    t.integer  "project_id"
  end

  create_table "commits", force: true do |t|
    t.string   "username"
    t.string   "email"    
    t.string   "date_time"
    t.string   "message"
    t.string   "sha"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
    t.string   "pic"
  end

  create_table "pivotal_stories", force: true do |t|
    t.string   "story_name"
    t.string   "current_state"
    t.string   "story_owner_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "projects", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "user_id"
    t.string   "github"
    t.string   "pivotal"
    t.string   "travis"
    t.string   "code"
    t.string   "travis_ci"
  end

  create_table "travis", force: true do |t|
    t.integer  "state",      limit: 255
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "project_id"
  end

  create_table "users", force: true do |t|
    t.string   "provider"
    t.string   "uid"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "email"
    t.string   "image"
    t.string   "nickname"
  end

end
