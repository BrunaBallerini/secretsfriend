# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.1].define(version: 2024_09_10_202001) do
  create_table "draw_users", force: :cascade do |t|
    t.integer "draw_id", null: false
    t.integer "user_id", null: false
    t.boolean "owner"
    t.text "suggestion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["draw_id"], name: "index_draw_users_on_draw_id"
    t.index ["user_id"], name: "index_draw_users_on_user_id"
  end

  create_table "draws", force: :cascade do |t|
    t.string "title"
    t.string "min_value"
    t.string "max_value"
    t.datetime "date_draws"
    t.datetime "date_present"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "match_friends", force: :cascade do |t|
    t.integer "draw_user_id", null: false
    t.integer "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "id_friends"
    t.index ["draw_user_id"], name: "index_match_friends_on_draw_user_id"
    t.index ["user_id"], name: "index_match_friends_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "jti"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["jti"], name: "index_users_on_jti"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "draw_users", "draws"
  add_foreign_key "draw_users", "users"
  add_foreign_key "match_friends", "draw_users"
  add_foreign_key "match_friends", "users"
  add_foreign_key "match_friends", "users", column: "id_friends"
end
