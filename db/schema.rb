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

ActiveRecord::Schema[8.0].define(version: 2025_06_07_054522) do
  create_table "airports", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "code", null: false
    t.index ["code"], name: "index_airports_on_code", unique: true
  end

  create_table "bookings", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bookings_flights", id: false, force: :cascade do |t|
    t.integer "flight_id"
    t.integer "booking_id"
    t.index ["booking_id"], name: "index_bookings_flights_on_booking_id"
    t.index ["flight_id"], name: "index_bookings_flights_on_flight_id"
  end

  create_table "flights", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "departure", null: false
    t.date "arrival", null: false
    t.integer "arrival_airport_id"
    t.integer "departure_airport_id"
    t.index ["arrival_airport_id"], name: "index_flights_on_arrival_airport_id"
    t.index ["departure_airport_id"], name: "index_flights_on_departure_airport_id"
  end

  create_table "flights_passengers", id: false, force: :cascade do |t|
    t.integer "flight_id"
    t.integer "passenger_id"
    t.index ["flight_id"], name: "index_flights_passengers_on_flight_id"
    t.index ["passenger_id"], name: "index_flights_passengers_on_passenger_id"
  end

  create_table "passengers", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "email"
    t.integer "booking_id"
    t.index ["booking_id"], name: "index_passengers_on_booking_id"
  end
end
