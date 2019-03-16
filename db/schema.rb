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

ActiveRecord::Schema.define(version: 2019_03_16_174633) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.integer "number_guests"
    t.integer "price"
    t.datetime "start_date"
    t.datetime "end_date"
    t.bigint "experience_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["experience_id"], name: "index_bookings_on_experience_id"
    t.index ["user_id"], name: "index_bookings_on_user_id"
  end

  create_table "categories", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "experience_reviews", force: :cascade do |t|
    t.integer "rating"
    t.text "body"
    t.bigint "booking_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["booking_id"], name: "index_experience_reviews_on_booking_id"
  end

  create_table "experiences", force: :cascade do |t|
    t.string "title"
    t.integer "price"
    t.float "duration"
    t.integer "spots"
    t.string "location"
    t.string "language"
    t.text "guide_description_qualifications"
    t.text "general_description"
    t.text "places2visit"
    t.string "equipment_provided"
    t.string "equipment_needed"
    t.bigint "guide_id"
    t.bigint "category_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_experiences_on_category_id"
    t.index ["guide_id"], name: "index_experiences_on_guide_id"
  end

  create_table "guides", force: :cascade do |t|
    t.string "bank_details"
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
    t.string "first_name"
    t.string "last_name"
    t.string "photo"
    t.date "birthday_date"
    t.string "residence_address"
    t.string "phone_number"
    t.string "gender"
    t.string "languages"
    t.text "description"
    t.string "emergency_contact"
    t.string "type"
    t.boolean "admin", default: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "bookings", "experiences"
  add_foreign_key "bookings", "users"
  add_foreign_key "experience_reviews", "bookings"
  add_foreign_key "experiences", "categories"
  add_foreign_key "experiences", "guides"
end
