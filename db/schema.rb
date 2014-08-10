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

ActiveRecord::Schema.define(version: 20140810164357) do

  create_table "action_fields", force: true do |t|
    t.string   "fieldName"
    t.string   "fieldType"
    t.integer  "action_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "action_fields", ["action_id"], name: "index_action_fields_on_action_id"

  create_table "actions", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "channel_fields", force: true do |t|
    t.string   "fieldName"
    t.string   "fieldType"
    t.integer  "channel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "channel_fields", ["channel_id"], name: "index_channel_fields_on_channel_id"

  create_table "channels", force: true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "data"
  end

  create_table "triggers", force: true do |t|
    t.string   "name"
    t.integer  "channel_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "triggers", ["channel_id"], name: "index_triggers_on_channel_id"

  create_table "tuple_fakes", force: true do |t|
    t.integer  "channel_id"
    t.integer  "trigger_id"
    t.integer  "action_id"
    t.string   "triggerValue"
    t.string   "triggerCondition"
    t.integer  "actionFields_id"
    t.text     "actionData"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "tuples", force: true do |t|
    t.string   "triggerValue"
    t.string   "triggerCondition"
    t.text     "actionData"
    t.integer  "channel_id"
    t.integer  "trigger_id"
    t.integer  "action_id"
    t.integer  "actionFields_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "tuples", ["actionFields_id"], name: "index_tuples_on_actionFields_id"
  add_index "tuples", ["action_id"], name: "index_tuples_on_action_id"
  add_index "tuples", ["channel_id"], name: "index_tuples_on_channel_id"
  add_index "tuples", ["trigger_id"], name: "index_tuples_on_trigger_id"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "email"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
