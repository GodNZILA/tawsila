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

ActiveRecord::Schema[7.0].define(version: 2022_10_08_141953) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "bookings", force: :cascade do |t|
    t.date "date_reservation"
    t.float "prix"
    t.string "statut"
    t.bigint "offre_id", null: false
    t.bigint "passager_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["offre_id"], name: "index_bookings_on_offre_id"
    t.index ["passager_id"], name: "index_bookings_on_passager_id"
  end

  create_table "conducteurs", force: :cascade do |t|
    t.string "numero_permis"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_conducteurs_on_user_id"
  end

  create_table "offres", force: :cascade do |t|
    t.string "description_trajet"
    t.string "depart"
    t.string "arrivee"
    t.datetime "heure_depart"
    t.float "prix"
    t.bigint "voiture_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["voiture_id"], name: "index_offres_on_voiture_id"
  end

  create_table "passagers", force: :cascade do |t|
    t.string "cin"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_passagers_on_user_id"
  end

  create_table "reviews", force: :cascade do |t|
    t.float "rating"
    t.text "content"
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_reviews_on_user_id"
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

  create_table "voitures", force: :cascade do |t|
    t.string "model"
    t.string "marque"
    t.string "immatriculation"
    t.bigint "conducteur_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["conducteur_id"], name: "index_voitures_on_conducteur_id"
  end

  add_foreign_key "bookings", "offres"
  add_foreign_key "bookings", "passagers"
  add_foreign_key "conducteurs", "users"
  add_foreign_key "offres", "voitures"
  add_foreign_key "passagers", "users"
  add_foreign_key "reviews", "users"
  add_foreign_key "voitures", "conducteurs"
end
