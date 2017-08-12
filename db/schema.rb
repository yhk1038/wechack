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

ActiveRecord::Schema.define(version: 20170812041832) do

  create_table "areas", force: :cascade do |t|
    t.integer "nation_id"
    t.integer "sido_id"
    t.integer "gugun_id"
    t.integer "local_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["gugun_id"], name: "index_areas_on_gugun_id"
    t.index ["local_id"], name: "index_areas_on_local_id"
    t.index ["nation_id"], name: "index_areas_on_nation_id"
    t.index ["sido_id"], name: "index_areas_on_sido_id"
  end

  create_table "grades", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "guguns", force: :cascade do |t|
    t.string "name"
    t.string "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "locals", force: :cascade do |t|
    t.string "name"
    t.string "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "nations", force: :cascade do |t|
    t.string "name"
    t.string "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "runtimes", force: :cascade do |t|
    t.datetime "wd_open"
    t.datetime "wd_close"
    t.datetime "we_open"
    t.datetime "we_close"
    t.datetime "etc_time1"
    t.datetime "etc_time2"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "sidos", force: :cascade do |t|
    t.string "name"
    t.string "info"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stores", force: :cascade do |t|
    t.string "name"
    t.integer "grade_id"
    t.integer "runtime_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_stores_on_grade_id"
    t.index ["runtime_id"], name: "index_stores_on_runtime_id"
  end

end
