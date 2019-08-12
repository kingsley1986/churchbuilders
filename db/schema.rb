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

ActiveRecord::Schema.define(version: 2019_08_07_093227) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_admin_comments", force: :cascade do |t|
    t.string "namespace"
    t.text "body"
    t.string "resource_type"
    t.bigint "resource_id"
    t.string "author_type"
    t.bigint "author_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
    t.index ["namespace"], name: "index_active_admin_comments_on_namespace"
    t.index ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"
  end

  create_table "admin_users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_admin_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true
  end

  create_table "comments", force: :cascade do |t|
    t.string "body"
    t.bigint "post_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id"
    t.boolean "like", default: false
    t.jsonb "liker_id", default: []
    t.jsonb "approved", default: []
    t.index ["post_id"], name: "index_comments_on_post_id"
  end

  create_table "galleries", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.string "image"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image_content_type"
    t.string "image_file_size"
  end

  create_table "homes", force: :cascade do |t|
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "images", force: :cascade do |t|
    t.string "image"
    t.string "image_title"
    t.string "image_file_size"
    t.string "image_content_type"
    t.string "image_description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "news", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pages", force: :cascade do |t|
    t.string "body"
    t.string "page_type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "title"
  end

  create_table "pictures", force: :cascade do |t|
    t.string "image"
    t.string "picturable_type"
    t.bigint "picturable_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["picturable_type", "picturable_id"], name: "index_pictures_on_picturable_type_and_picturable_id"
  end

  create_table "posts", force: :cascade do |t|
    t.string "title"
    t.string "post_body"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "like", default: false
    t.jsonb "liker_id", default: []
    t.index ["user_id"], name: "index_posts_on_user_id"
  end

  create_table "replies", force: :cascade do |t|
    t.string "reply_body"
    t.bigint "comment_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["comment_id"], name: "index_replies_on_comment_id"
    t.index ["user_id"], name: "index_replies_on_user_id"
  end

  create_table "sermonreviews", force: :cascade do |t|
    t.text "body"
    t.string "name"
    t.string "email"
    t.bigint "sermon_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "review_approve", default: []
    t.index ["sermon_id"], name: "index_sermonreviews_on_sermon_id"
  end

  create_table "sermons", force: :cascade do |t|
    t.string "title"
    t.text "body"
    t.string "preacher"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "sermondate"
  end

  create_table "upcoming_events", force: :cascade do |t|
    t.string "title"
    t.string "body"
    t.datetime "starting_date"
    t.datetime "end_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.jsonb "going", default: []
    t.jsonb "coming_with", default: []
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "first_name"
    t.string "last_name"
    t.string "phone"
    t.string "gender"
    t.boolean "admin"
    t.jsonb "roles", default: []
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "comments", "posts"
  add_foreign_key "posts", "users"
  add_foreign_key "replies", "comments"
  add_foreign_key "replies", "users"
  add_foreign_key "sermonreviews", "sermons"
end
