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

ActiveRecord::Schema.define(:version => 20130606081534) do

  create_table "active_admin_comments", :force => true do |t|
    t.integer  "resource_id",   :null => false
    t.string   "resource_type", :null => false
    t.integer  "author_id"
    t.string   "author_type"
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
    t.string   "namespace"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], :name => "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], :name => "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], :name => "index_admin_notes_on_resource_type_and_resource_id"

  create_table "admin_users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
  end

  add_index "admin_users", ["email"], :name => "index_admin_users_on_email", :unique => true
  add_index "admin_users", ["reset_password_token"], :name => "index_admin_users_on_reset_password_token", :unique => true

  create_table "huiyi_cates", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "title",      :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "huiyi_cates", ["user_id"], :name => "index_huiyi_cates_on_user_id"

  create_table "huiyi_items", :force => true do |t|
    t.integer  "user_id",       :null => false
    t.integer  "huiyi_cate_id", :null => false
    t.date     "note_date",     :null => false
    t.string   "title",         :null => false
    t.text     "body"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "huiyi_items", ["huiyi_cate_id"], :name => "index_huiyi_items_on_huiyi_cate_id"
  add_index "huiyi_items", ["user_id"], :name => "index_huiyi_items_on_user_id"

  create_table "jiapus", :force => true do |t|
    t.string   "owner_id"
    t.string   "name"
    t.text     "note"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jinian_cates", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.integer  "parent_id"
    t.string   "title"
    t.text     "body"
    t.date     "note_date"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "jinian_items", :force => true do |t|
    t.integer  "jinian_cate_id"
    t.integer  "user_id"
    t.integer  "upload_id"
    t.string   "title"
    t.text     "body"
    t.date     "note_date"
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "jinian_items", ["jinian_cate_id"], :name => "index_jinian_items_on_jinian_cate_id"

  create_table "notes", :force => true do |t|
    t.integer  "user_id"
    t.date     "note_date"
    t.string   "title"
    t.text     "body"
    t.string   "image_path"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "notes", ["user_id"], :name => "index_notes_on_user_id"

  create_table "pages", :force => true do |t|
    t.string   "title",            :limit => 512,      :default => "", :null => false
    t.text     "body",             :limit => 16777215
    t.string   "path_name"
    t.string   "meta_keywords",    :limit => 512
    t.string   "meta_description", :limit => 512
    t.integer  "deletable",                            :default => 0
    t.datetime "created_at",                                           :null => false
    t.datetime "updated_at",                                           :null => false
  end

  add_index "pages", ["path_name"], :name => "index_pages_on_path_name", :unique => true

  create_table "resource_cates", :force => true do |t|
    t.integer  "user_id"
    t.string   "source_type"
    t.string   "source_name"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  add_index "resource_cates", ["user_id", "source_type"], :name => "index_resource_cates_on_user_id_and_source_type"
  add_index "resource_cates", ["user_id"], :name => "index_resource_cates_on_user_id"

  create_table "resource_items", :force => true do |t|
    t.integer  "user_id"
    t.integer  "resource_cate_id"
    t.string   "resource_type",    :default => "默认"
    t.string   "resource_name"
    t.string   "resource_path"
    t.text     "resource_note"
    t.datetime "created_at",                         :null => false
    t.datetime "updated_at",                         :null => false
  end

  add_index "resource_items", ["user_id", "resource_cate_id"], :name => "index_resource_items_on_user_id_and_resource_cate_id"
  add_index "resource_items", ["user_id", "resource_type"], :name => "index_resource_items_on_user_id_and_resource_type"
  add_index "resource_items", ["user_id"], :name => "index_resource_items_on_user_id"

  create_table "roles", :force => true do |t|
    t.string   "name"
    t.integer  "resource_id"
    t.string   "resource_type"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "roles", ["name", "resource_type", "resource_id"], :name => "index_roles_on_name_and_resource_type_and_resource_id"
  add_index "roles", ["name"], :name => "index_roles_on_name"

  create_table "tool_acounts", :force => true do |t|
    t.integer  "user_id",       :null => false
    t.string   "name"
    t.string   "password",      :null => false
    t.string   "password_tips"
    t.string   "email"
    t.string   "note"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "tool_acounts", ["user_id"], :name => "index_tool_acounts_on_user_id"

  create_table "tool_items", :force => true do |t|
    t.integer  "user_id",       :null => false
    t.string   "title",         :null => false
    t.string   "name",          :null => false
    t.string   "password",      :null => false
    t.string   "password_tips"
    t.string   "note"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  add_index "tool_items", ["user_id"], :name => "index_tool_items_on_user_id"

  create_table "uploads", :force => true do |t|
    t.integer  "user_id",                                    :null => false
    t.string   "resource_type",       :default => "default", :null => false
    t.integer  "resource_id",                                :null => false
    t.string   "upload_file_name"
    t.string   "upload_content_type"
    t.string   "upload_file_size"
    t.datetime "upload_updated_at"
    t.datetime "created_at",                                 :null => false
    t.datetime "updated_at",                                 :null => false
  end

  create_table "user_infos", :force => true do |t|
    t.integer  "user_id"
    t.string   "xing"
    t.string   "ming"
    t.string   "en_name"
    t.string   "nice_name"
    t.integer  "gender"
    t.date     "birth"
    t.string   "birth_place"
    t.string   "living_place"
    t.string   "picture_url"
    t.string   "email"
    t.string   "qq"
    t.string   "phone"
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
  end

  add_index "user_infos", ["user_id"], :name => "index_user_infos_on_user_id"

  create_table "user_relationships", :force => true do |t|
    t.integer  "jiapu_id"
    t.integer  "user_id"
    t.string   "relation_type"
    t.integer  "related_user_id"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
  end

  add_index "user_relationships", ["jiapu_id"], :name => "index_user_relationships_on_jiapu_id"
  add_index "user_relationships", ["user_id"], :name => "index_user_relationships_on_user_id"

  create_table "users", :force => true do |t|
    t.string   "email",                  :default => "", :null => false
    t.string   "encrypted_password",     :default => "", :null => false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          :default => 0
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at",                             :null => false
    t.datetime "updated_at",                             :null => false
    t.string   "name"
  end

  add_index "users", ["email"], :name => "index_users_on_email", :unique => true
  add_index "users", ["reset_password_token"], :name => "index_users_on_reset_password_token", :unique => true

  create_table "users_roles", :id => false, :force => true do |t|
    t.integer "user_id"
    t.integer "role_id"
  end

  add_index "users_roles", ["user_id", "role_id"], :name => "index_users_roles_on_user_id_and_role_id"

  create_table "zuopin_cates", :force => true do |t|
    t.integer  "user_id",    :null => false
    t.string   "title",      :null => false
    t.string   "cate",       :null => false
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  add_index "zuopin_cates", ["user_id"], :name => "index_zuopin_cates_on_user_id"

  create_table "zuopin_items", :force => true do |t|
    t.integer  "user_id",        :null => false
    t.integer  "zuopin_cate_id", :null => false
    t.string   "title",          :null => false
    t.text     "body",           :null => false
    t.datetime "created_at",     :null => false
    t.datetime "updated_at",     :null => false
  end

  add_index "zuopin_items", ["user_id"], :name => "index_zuopin_items_on_user_id"
  add_index "zuopin_items", ["zuopin_cate_id"], :name => "index_zuopin_items_on_zuopin_cate_id"

end
