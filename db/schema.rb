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

ActiveRecord::Schema[7.0].define(version: 2022_09_29_020647) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "owners", force: :cascade do |t|
    t.string "nombre"
    t.integer "cedula"
    t.integer "telefono"
    t.string "correo"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pets", force: :cascade do |t|
    t.string "nombre"
    t.string "especie"
    t.string "comida"
    t.text "enfermedades"
    t.text "alergias"
    t.text "cuidados"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "owner_id", null: false
    t.string "raza"
    t.index ["owner_id"], name: "index_pets_on_owner_id"
  end

  add_foreign_key "pets", "owners"
end
