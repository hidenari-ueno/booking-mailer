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

ActiveRecord::Schema.define(version: 20190703085459) do

  create_table "mail_addresses", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "name", null: false, comment: "名前"
    t.string "adrress", null: false, comment: "アドレス"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "mails", force: :cascade, options: "ENGINE=InnoDB DEFAULT CHARSET=utf8" do |t|
    t.string "title", null: false, comment: "件名"
    t.text "body", null: false, comment: "本文"
    t.text "sammary", null: false, comment: "概要"
    t.datetime "post_date", null: false, comment: "送信日"
    t.bigint "sender_id", null: false, comment: "送信元アドレスID"
    t.bigint "receiver_id", null: false, comment: "送信先アドレスID"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["receiver_id"], name: "index_mails_on_receiver_id"
    t.index ["sender_id"], name: "index_mails_on_sender_id"
  end

  add_foreign_key "mails", "mail_addresses", column: "receiver_id"
  add_foreign_key "mails", "mail_addresses", column: "sender_id"
end
