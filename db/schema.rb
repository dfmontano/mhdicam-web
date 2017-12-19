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

ActiveRecord::Schema.define(version: 20171214032252) do

# Could not dump table "bacteria" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "balanceados" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "corridas" because of following StandardError
#   Unknown type 'uuid' for column 'id'

  create_table "corridas_piscinas", id: false, force: :cascade do |t|
    t.integer "corrida_id", null: false
    t.integer "piscina_id", null: false
    t.index ["corrida_id", "piscina_id"], name: "index_corridas_piscinas_on_corrida_id_and_piscina_id"
    t.index ["piscina_id", "corrida_id"], name: "index_corridas_piscinas_on_piscina_id_and_corrida_id"
  end

# Could not dump table "desinfectantes" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "fertilizantes" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "gastos_balanceados" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "periodos" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "piscinas" because of following StandardError
#   Unknown type 'uuid' for column 'id'

# Could not dump table "vitaminas" because of following StandardError
#   Unknown type 'uuid' for column 'id'

end
