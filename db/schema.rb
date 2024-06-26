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

ActiveRecord::Schema[7.1].define(version: 2024_06_13_215944) do
  create_table "all_secrets_friends", force: :cascade do |t|
    t.string "name", limit: 200
    t.string "email", limit: 150
    t.boolean "draw_create"
    t.integer "draw_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["draw_id"], name: "index_all_secrets_friends_on_draw_id"
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

  create_table "new_draws", force: :cascade do |t|
    t.string "title", limit: 150
    t.string "min_value", limit: 100
    t.string "max_value", limit: 100
    t.string "date_draw", limit: 100
    t.string "date_present", limit: 100
    t.string "description", limit: 200
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "all_secrets_friends", "draws"
end
