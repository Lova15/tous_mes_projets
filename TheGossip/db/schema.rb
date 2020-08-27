# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_03_10_073918) do

  create_table "cities", force: :cascade do |t|
    t.string "name"
    t.integer "postal_code"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "commentaire_bis", force: :cascade do |t|
    t.integer "user_id"
    t.text "content"
    t.string "combis_type"
    t.integer "combis_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["combis_type", "combis_id"], name: "index_commentaire_bis_on_combis_type_and_combis_id"
    t.index ["user_id"], name: "index_commentaire_bis_on_user_id"
  end

  create_table "commentaires", force: :cascade do |t|
    t.integer "user_id"
    t.text "content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_commentaires_on_user_id"
  end

  create_table "gossip_tag", id: false, force: :cascade do |t|
    t.integer "gossip_id"
    t.integer "tag_id"
    t.index ["gossip_id"], name: "index_gossip_tag_on_gossip_id"
    t.index ["tag_id"], name: "index_gossip_tag_on_tag_id"
  end

  create_table "gossips", force: :cascade do |t|
    t.string "title"
    t.text "content"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_gossips_on_user_id"
  end

  create_table "gossips_tags", id: false, force: :cascade do |t|
    t.integer "gossip_id"
    t.integer "tag_id"
    t.index ["gossip_id"], name: "index_gossips_tags_on_gossip_id"
    t.index ["tag_id"], name: "index_gossips_tags_on_tag_id"
  end

  create_table "likes", force: :cascade do |t|
    t.integer "user_id"
    t.string "jaime_type"
    t.integer "jaime_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["jaime_type", "jaime_id"], name: "index_likes_on_jaime_type_and_jaime_id"
    t.index ["user_id"], name: "index_likes_on_user_id"
  end

  create_table "private_messages", force: :cascade do |t|
    t.text "content"
    t.integer "recipient_id"
    t.integer "sender_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["recipient_id"], name: "index_private_messages_on_recipient_id"
    t.index ["sender_id"], name: "index_private_messages_on_sender_id"
  end

  create_table "tags", force: :cascade do |t|
    t.string "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "description"
    t.string "email"
    t.integer "age"
    t.integer "city_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["city_id"], name: "index_users_on_city_id"
  end

end
