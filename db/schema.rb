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

ActiveRecord::Schema[7.1].define(version: 2023_10_09_140351) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "stations", force: :cascade do |t|
    t.integer "id_station"
    t.float "latitude"
    t.float "longitude"
    t.string "cp"
    t.string "pop"
    t.string "adresse"
    t.string "ville"
    t.string "services"
    t.string "prix"
    t.string "horaires"
    t.string "geom"
    t.string "gazole_maj"
    t.string "gazole_prix"
    t.string "sp95_maj"
    t.string "sp95_prix"
    t.string "e85_maj"
    t.string "e85_prix"
    t.string "gplc_maj"
    t.string "gplc_prix"
    t.string "e10_maj"
    t.string "e10_prix"
    t.string "sp98_maj"
    t.string "sp98_prix"
    t.string "carburants_disponibles"
    t.string "carburants_indisponibles"
    t.string "horaires_automate_24_24"
    t.string "services_service"
    t.string "departement"
    t.string "code_departement"
    t.string "region"
    t.string "code_region"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
