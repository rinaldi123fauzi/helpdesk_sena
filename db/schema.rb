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

ActiveRecord::Schema.define(version: 2023_08_17_140340) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "active_storage_attachments", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "approvals", force: :cascade do |t|
    t.string "issued_by"
    t.string "approve_level"
    t.datetime "date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "ticket_id"
    t.string "description"
    t.index ["ticket_id"], name: "index_approvals_on_ticket_id"
  end

  create_table "areas", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "categories", force: :cascade do |t|
    t.string "nama_kategori"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "id_pegawai"
    t.string "nama"
    t.string "tempat_lahir"
    t.date "tanggal_lahir"
    t.string "alamat"
    t.string "id_identitas"
    t.string "nomor_telepon"
    t.string "email"
    t.string "jabatan"
    t.bigint "work_unit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["work_unit_id"], name: "index_employees_on_work_unit_id"
  end

  create_table "inventories", force: :cascade do |t|
    t.string "kode"
    t.bigint "item_id"
    t.string "merek"
    t.date "tahun_perolehan"
    t.integer "harga_perolehan"
    t.integer "nilai_residu"
    t.date "masa_guna"
    t.string "lama_pakai"
    t.string "kondisi"
    t.string "lokasi"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["item_id"], name: "index_inventories_on_item_id"
    t.index ["user_id"], name: "index_inventories_on_user_id"
  end

  create_table "items", force: :cascade do |t|
    t.string "nama_item"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "loans", force: :cascade do |t|
    t.bigint "user_id"
    t.string "deskripsi"
    t.integer "jumlah"
    t.date "from_date"
    t.date "to_date"
    t.string "penanggung_jawab"
    t.integer "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "inventory_id"
    t.index ["inventory_id"], name: "index_loans_on_inventory_id"
    t.index ["user_id"], name: "index_loans_on_user_id"
  end

  create_table "positions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.bigint "work_unit_id"
    t.boolean "punya_pm"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_positions_on_role_id"
    t.index ["user_id"], name: "index_positions_on_user_id"
    t.index ["work_unit_id"], name: "index_positions_on_work_unit_id"
  end

  create_table "role_assignments", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["role_id"], name: "index_role_assignments_on_role_id"
    t.index ["user_id"], name: "index_role_assignments_on_user_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name", null: false
    t.text "permissions"
    t.string "type", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "slas", force: :cascade do |t|
    t.bigint "category_id"
    t.integer "period"
    t.boolean "status"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_slas_on_category_id"
  end

  create_table "sub_categories", force: :cascade do |t|
    t.bigint "category_id"
    t.string "nama_sub_kategori"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "approval_berjenjang"
    t.string "template_ticket"
    t.index ["category_id"], name: "index_sub_categories_on_category_id"
  end

  create_table "ticket_chats", force: :cascade do |t|
    t.string "sender"
    t.string "receiver"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tickets", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "sub_category_id"
    t.bigint "work_unit_id"
    t.string "issued_by"
    t.text "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "area_id"
    t.string "status"
    t.string "assigned_by"
    t.string "no_ticket"
    t.string "approval_by"
    t.datetime "created_respon"
    t.datetime "inprogress_respon"
    t.datetime "closed_respon"
    t.boolean "pause_respon", default: false
    t.decimal "duration"
    t.index ["area_id"], name: "index_tickets_on_area_id"
    t.index ["category_id"], name: "index_tickets_on_category_id"
    t.index ["sub_category_id"], name: "index_tickets_on_sub_category_id"
    t.index ["work_unit_id"], name: "index_tickets_on_work_unit_id"
  end

  create_table "tx_errors", force: :cascade do |t|
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "controller"
    t.string "action"
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "name"
    t.string "username"
    t.boolean "state", default: true
    t.string "user_type"
    t.integer "token"
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "work_units", force: :cascade do |t|
    t.string "nama"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
  add_foreign_key "approvals", "tickets"
  add_foreign_key "employees", "work_units"
  add_foreign_key "inventories", "items"
  add_foreign_key "inventories", "users"
  add_foreign_key "loans", "inventories"
  add_foreign_key "loans", "users"
  add_foreign_key "positions", "roles"
  add_foreign_key "positions", "users"
  add_foreign_key "positions", "work_units"
  add_foreign_key "role_assignments", "roles"
  add_foreign_key "role_assignments", "users"
  add_foreign_key "slas", "categories"
  add_foreign_key "sub_categories", "categories"
  add_foreign_key "tickets", "areas"
  add_foreign_key "tickets", "categories"
  add_foreign_key "tickets", "sub_categories"
  add_foreign_key "tickets", "work_units"
end
