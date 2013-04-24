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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130424155649) do

  create_table "crimagify_images", :force => true do |t|
    t.string   "image",          :default => "", :null => false
    t.string   "image_temporal", :default => "", :null => false
    t.string   "image_name",     :default => "", :null => false
    t.integer  "parent_id"
    t.string   "parent_type"
    t.datetime "created_at",                     :null => false
    t.datetime "updated_at",                     :null => false
  end

  add_index "crimagify_images", ["parent_id"], :name => "index_crimagify_images_on_parent_id"

  create_table "products", :force => true do |t|
    t.string   "name",        :default => "", :null => false
    t.string   "description", :default => "", :null => false
    t.datetime "created_at",                  :null => false
    t.datetime "updated_at",                  :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "name"
    t.string   "lastname"
    t.string   "email"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
