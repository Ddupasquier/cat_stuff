
ActiveRecord::Schema[7.0].define(version: 2022_02_25_002200) do
  create_table "cat_owners", force: :cascade do |t|
    t.string "name"
    t.integer "age"
    t.string "city"
    t.string "state"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "image"
  end

  create_table "cat_toys", force: :cascade do |t|
    t.string "toy_name"
    t.integer "cat_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "likes", default: 0
    t.index ["cat_id"], name: "index_cat_toys_on_cat_id"
  end

  create_table "cats", force: :cascade do |t|
    t.string "name"
    t.string "breed"
    t.integer "age"
    t.integer "cat_owner_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "likes", default: 0
    t.index ["cat_owner_id"], name: "index_cats_on_cat_owner_id"
  end

  add_foreign_key "cat_toys", "cats"
  add_foreign_key "cats", "cat_owners"
end
