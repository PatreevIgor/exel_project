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

ActiveRecord::Schema.define(version: 20180221081038) do

  create_table "histories", force: :cascade do |t|
    t.string "owner"
    t.string "event"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "task"
  end

  create_table "projects", force: :cascade do |t|
    t.string "title"
    t.text "description"
    t.integer "intfield1"
    t.integer "intfield2"
    t.date "date1"
    t.date "date2"
    t.date "date3"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "result_integer"
    t.integer "result_date"
  end

  create_table "tasks", force: :cascade do |t|
    t.string "code"
    t.string "task"
    t.string "responsible"
    t.date "begin_date"
    t.date "end_date"
    t.integer "count_days"
    t.text "status"
    t.date "begin_date_fact"
    t.date "end_date_fact"
    t.float "budget"
    t.float "debit"
    t.float "credit"
    t.float "fund_balance"
    t.float "deviation"
    t.float "income"
    t.float "total"
    t.text "comments"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "owner"
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
    t.string "current_sign_in_ip"
    t.string "last_sign_in_ip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

end
