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

ActiveRecord::Schema.define(:version => 20110915213222) do

  create_table "categories", :force => true do |t|
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "categories_projects", :id => false, :force => true do |t|
    t.integer "category_id"
    t.integer "project_id"
  end

  create_table "foursquares", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.string   "description"
    t.datetime "pub_at"
    t.string   "guid"
    t.decimal  "lat",         :precision => 15, :scale => 10
    t.decimal  "long",        :precision => 15, :scale => 10
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "goodreads", :force => true do |t|
    t.string   "title"
    t.datetime "pub_at"
    t.integer  "book_id"
    t.string   "book_small_image_url"
    t.string   "book_medium_image_url"
    t.string   "book_large_image_url"
    t.string   "author_name"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "url"
  end

  create_table "instapapers", :force => true do |t|
    t.string   "title"
    t.string   "url"
    t.datetime "pubat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "lastfms", :force => true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "artist"
    t.string   "name"
    t.string   "url"
    t.string   "album"
    t.datetime "played_at"
    t.string   "image_url"
  end

  create_table "pinboards", :force => true do |t|
    t.string   "title"
    t.text     "summary"
    t.string   "url"
    t.datetime "pubat"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "projectimages", :force => true do |t|
    t.string   "url"
    t.integer  "project_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "mainimage"
  end

  create_table "projects", :force => true do |t|
    t.string   "title"
    t.text     "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "client"
    t.string   "projectformat"
    t.string   "shortname"
    t.string   "summary"
    t.string   "slug"
  end

  add_index "projects", ["slug"], :name => "index_projects_on_slug", :unique => true

  create_table "tweets", :force => true do |t|
    t.string   "message"
    t.datetime "pub_at"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users", :force => true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
