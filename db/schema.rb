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

ActiveRecord::Schema.define(:version => 20110518034441) do

  create_table "options", :force => true do |t|
    t.string   "name"
    t.integer  "points"
    t.integer  "type_id"
    t.integer  "troop_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "troop_types", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "min_percentage", :default => 0
    t.integer  "max_percentage", :default => 0
  end

  create_table "troops", :force => true do |t|
    t.string  "name"
    t.integer "base_points"
    t.integer "troop_type_id"
    t.integer "point_type_id"
    t.integer "count",         :default => 1
  end

end
