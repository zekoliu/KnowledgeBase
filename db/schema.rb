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

ActiveRecord::Schema.define(version: 2020_06_10_074649) do

  create_table "active_storage_attachments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", null: false
    t.string "record_type", null: false
    t.bigint "record_id", null: false
    t.bigint "blob_id", null: false
    t.datetime "created_at", null: false
    t.index ["blob_id"], name: "index_active_storage_attachments_on_blob_id"
    t.index ["record_type", "record_id", "name", "blob_id"], name: "index_active_storage_attachments_uniqueness", unique: true
  end

  create_table "active_storage_blobs", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "key", null: false
    t.string "filename", null: false
    t.string "content_type"
    t.text "metadata"
    t.bigint "byte_size", null: false
    t.string "checksum", null: false
    t.datetime "created_at", null: false
    t.index ["key"], name: "index_active_storage_blobs_on_key", unique: true
  end

  create_table "courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", default: "", comment: "课程名字"
    t.decimal "price", precision: 5, scale: 2, default: "0.0", comment: "课程价格"
    t.decimal "actual_price", precision: 5, scale: 2, default: "0.0", comment: "课程实际价格"
    t.datetime "finish_date", comment: "拼单结束时间"
    t.integer "group_number", comment: "成团人数"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "moments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id", comment: "用户id"
    t.string "content", default: "", comment: "内容"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjects", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", default: "", comment: "科目名称"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "subjucts", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "name", default: "", comment: "科目名称"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "topics", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "title", comment: "题意"
    t.string "answer", comment: "答案"
    t.string "options", comment: "选项"
    t.string "parsing", default: "", comment: "解析"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.datetime "deleted_at", comment: "删除时间"
    t.string "status", default: "pending", comment: "审核状态"
    t.integer "subject_id", comment: "科目id"
  end

  create_table "user_courses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.integer "user_id", comment: "用户id"
    t.integer "course_id", comment: "课程id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci", force: :cascade do |t|
    t.string "phone", default: "", comment: "电话号码"
    t.string "name", default: "", comment: "名字"
    t.string "openid", comment: "微信openid"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "wx_avatar_url", default: "", comment: "微信头像url"
  end

  add_foreign_key "active_storage_attachments", "active_storage_blobs", column: "blob_id"
end
