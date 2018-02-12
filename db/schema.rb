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

ActiveRecord::Schema.define(version: 20180215083734) do

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
  end

end
