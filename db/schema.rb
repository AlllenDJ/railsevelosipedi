

ActiveRecord::Schema.define(version: 2021_09_18_165402) do

  create_table "darbiniekis", force: :cascade do |t|
    t.datetime "starta_laiks"
    t.datetime "beigu_laiks"
    t.string "vards"
    t.string "uzvards"
    t.string "epasts"
    t.string "telefons"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
