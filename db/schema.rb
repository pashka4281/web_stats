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

ActiveRecord::Schema.define(:version => 20120616235936) do

  create_table "accounts", :force => true do |t|
    t.string   "name"
    t.integer  "owner_id"
    t.datetime "created_at"
  end

  create_table "requests", :force => true do |t|
    t.string   "source_ip"
    t.string   "browser"
    t.string   "country"
    t.string   "os"
    t.string   "user_agent"
    t.string   "referer"
    t.string   "language"
    t.string   "charset"
    t.integer  "website_id"
    t.datetime "created_at"
  end

  add_index "requests", ["browser"], :name => "index_requests_on_browser"
  add_index "requests", ["country"], :name => "index_requests_on_country"
  add_index "requests", ["os"], :name => "index_requests_on_os"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "first_name"
    t.string   "last_name"
    t.string   "full_name"
    t.integer  "account_id"
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "websites", :force => true do |t|
    t.integer  "account_id"
    t.string   "name"
    t.string   "uri"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

end
