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

ActiveRecord::Schema.define(version: 2022_01_17_014404) do

  create_table "goals", force: :cascade do |t|
    t.integer "plan_of_care_id"
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["plan_of_care_id"], name: "index_goals_on_plan_of_care_id"
  end

  create_table "notes", force: :cascade do |t|
    t.integer "session_id"
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["session_id"], name: "index_notes_on_session_id"
  end

  create_table "outcomes", force: :cascade do |t|
    t.integer "goal_id"
    t.integer "note_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["goal_id"], name: "index_outcomes_on_goal_id"
    t.index ["note_id"], name: "index_outcomes_on_note_id"
  end

  create_table "patients", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "plan_of_cares", force: :cascade do |t|
    t.integer "patient_id"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_plan_of_cares_on_patient_id"
  end

  create_table "scores", force: :cascade do |t|
    t.integer "trial_id"
    t.boolean "success"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["trial_id"], name: "index_scores_on_trial_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.integer "patient_id"
    t.string "title"
    t.text "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_sessions_on_patient_id"
  end

  create_table "trials", force: :cascade do |t|
    t.integer "note_id"
    t.string "name"
    t.string "description"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["note_id"], name: "index_trials_on_note_id"
  end

end
