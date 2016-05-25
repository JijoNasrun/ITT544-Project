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
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160525065843) do

  create_table "bookings", force: :cascade do |t|
    t.string   "booking_id",         limit: 255
    t.string   "book_id",            limit: 255
    t.string   "booking_date",       limit: 255
    t.string   "booking_issue_date", limit: 255
    t.string   "booking_status",     limit: 255
    t.string   "user_id",            limit: 255
    t.datetime "created_at",                     null: false
    t.datetime "updated_at",                     null: false
  end

  create_table "books", force: :cascade do |t|
    t.string   "book_id",      limit: 255
    t.string   "book_isdn",    limit: 255
    t.string   "book_title",   limit: 255
    t.string   "book_author",  limit: 255
    t.string   "book_status",  limit: 255
    t.integer  "book_edition", limit: 4
    t.string   "book_image",   limit: 255
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "borrows", force: :cascade do |t|
    t.string   "borrow_id",     limit: 255
    t.string   "booking_id",    limit: 255
    t.string   "borrow_due",    limit: 255
    t.string   "borrow_return", limit: 255
    t.string   "borrow_status", limit: 255
    t.datetime "created_at",                null: false
    t.datetime "updated_at",                null: false
  end

  create_table "fines", force: :cascade do |t|
    t.string   "fines_id",       limit: 255
    t.string   "borrow_id",      limit: 255
    t.string   "fines_amount",   limit: 255
    t.string   "fines_status",   limit: 255
    t.string   "fines_date_pay", limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "staffs", force: :cascade do |t|
    t.string   "staff_id",       limit: 255
    t.string   "user_id",        limit: 255
    t.string   "staff_position", limit: 255
    t.string   "staff_email",    limit: 255
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "students", force: :cascade do |t|
    t.string   "id_student", limit: 255
    t.string   "user_id",    limit: 255
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "user_id",         limit: 255
    t.string   "user_name",       limit: 255
    t.string   "user_level",      limit: 255
    t.string   "user_address",    limit: 255
    t.string   "user_contact",    limit: 255
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.string   "email",           limit: 255
    t.string   "password_digest", limit: 255
  end

end
