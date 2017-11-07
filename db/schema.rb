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

ActiveRecord::Schema.define(version: 20171102034252) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "activities", force: :cascade do |t|
    t.date "fechaInicio"
    t.date "fechaFinal"
    t.date "horaLlegada"
    t.date "horaSalida"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "places_id"
    t.index ["places_id"], name: "index_activities_on_places_id"
  end

  create_table "excursion_personas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "excursions_id"
    t.bigint "people_id"
    t.index ["excursions_id"], name: "index_excursion_personas_on_excursions_id"
    t.index ["people_id"], name: "index_excursion_personas_on_people_id"
  end

  create_table "excursions", force: :cascade do |t|
    t.string "video"
    t.string "foto"
    t.integer "cupoMax"
    t.string "descripcion"
    t.integer "encargado"
    t.integer "rangoCancelacion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "transports_id"
    t.bigint "activities_id"
    t.index ["activities_id"], name: "index_excursions_on_activities_id"
    t.index ["transports_id"], name: "index_excursions_on_transports_id"
  end

  create_table "payments", force: :cascade do |t|
    t.integer "monto"
    t.date "fecha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "people_id"
    t.bigint "excursions_id"
    t.index ["excursions_id"], name: "index_payments_on_excursions_id"
    t.index ["people_id"], name: "index_payments_on_people_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "nombre"
    t.string "correo"
    t.string "foto"
    t.string "contrasenha"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "photos", force: :cascade do |t|
    t.string "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "places_id"
    t.index ["places_id"], name: "index_photos_on_places_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "ubicacion"
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "service_places", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "places_id"
    t.bigint "services_id"
    t.index ["places_id"], name: "index_service_places_on_places_id"
    t.index ["services_id"], name: "index_service_places_on_services_id"
  end

  create_table "services", force: :cascade do |t|
    t.string "servicio"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tema_personas", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "themes_id"
    t.bigint "people_id"
    t.index ["people_id"], name: "index_tema_personas_on_people_id"
    t.index ["themes_id"], name: "index_tema_personas_on_themes_id"
  end

  create_table "themes", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.string "foto"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "themes_activities", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "themes_id"
    t.bigint "activities_id"
    t.index ["activities_id"], name: "index_themes_activities_on_activities_id"
    t.index ["themes_id"], name: "index_themes_activities_on_themes_id"
  end

  create_table "transports", force: :cascade do |t|
    t.string "foto"
    t.string "descripcion"
    t.string "extras"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "activities", "places", column: "places_id"
  add_foreign_key "excursion_personas", "excursions", column: "excursions_id"
  add_foreign_key "excursion_personas", "people", column: "people_id"
  add_foreign_key "excursions", "activities", column: "activities_id"
  add_foreign_key "excursions", "transports", column: "transports_id"
  add_foreign_key "payments", "excursions", column: "excursions_id"
  add_foreign_key "payments", "people", column: "people_id"
  add_foreign_key "photos", "places", column: "places_id"
  add_foreign_key "service_places", "places", column: "places_id"
  add_foreign_key "service_places", "services", column: "services_id"
  add_foreign_key "tema_personas", "people", column: "people_id"
  add_foreign_key "tema_personas", "themes", column: "themes_id"
  add_foreign_key "themes_activities", "activities", column: "activities_id"
  add_foreign_key "themes_activities", "themes", column: "themes_id"
end
