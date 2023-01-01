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

ActiveRecord::Schema[7.0].define(version: 2023_01_01_080424) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "classes_subjects", id: false, force: :cascade do |t|
    t.bigint "class_id", null: false
    t.bigint "subject_id", null: false
  end

  create_table "examinations", force: :cascade do |t|
    t.date "year"
    t.decimal "homework"
    t.decimal "classwork"
    t.decimal "mid_term"
    t.date "date_started"
    t.date "date_ended"
    t.bigint "terms_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["terms_id"], name: "index_examinations_on_terms_id"
  end

  create_table "examinations_students", id: false, force: :cascade do |t|
    t.bigint "student_id", null: false
    t.bigint "examination_id", null: false
  end

  create_table "examinations_subjects", id: false, force: :cascade do |t|
    t.bigint "subject_id", null: false
    t.bigint "examination_id", null: false
  end

  create_table "grades", force: :cascade do |t|
    t.string "name"
    t.integer "class_number"
    t.integer "occupancy"
    t.string "section"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "grades_teachers", id: false, force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "grade_id", null: false
  end

  create_table "join_subject_teachers", force: :cascade do |t|
    t.string "subjects"
    t.string "teachers"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "schools", force: :cascade do |t|
    t.string "name"
    t.date "date_created"
    t.string "address"
    t.string "motto"
    t.string "mission"
    t.string "vision"
    t.string "core_value"
    t.string "email"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "student_profiles", force: :cascade do |t|
    t.string "address"
    t.string "identification_number"
    t.string "date_of_birth"
    t.string "date_of_addmission"
    t.string "date_of_completion"
    t.string "father_first_name"
    t.string "father_last_name"
    t.string "father_phone_number"
    t.string "father_occupation"
    t.string "father_email"
    t.string "mother_first_name"
    t.string "mother_last_name"
    t.string "mother_phone_number"
    t.string "mother_occupation"
    t.string "mother_email"
    t.bigint "student_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["student_id"], name: "index_student_profiles_on_student_id"
  end

  create_table "students", force: :cascade do |t|
    t.string "index_number"
    t.bigint "grade_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["grade_id"], name: "index_students_on_grade_id"
    t.index ["user_id"], name: "index_students_on_user_id"
  end

  create_table "students_teachers", id: false, force: :cascade do |t|
    t.bigint "teacher_id", null: false
    t.bigint "student_id", null: false
  end

  create_table "subjects", force: :cascade do |t|
    t.string "name"
    t.string "section"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "teacher_profiles", force: :cascade do |t|
    t.string "address"
    t.string "identification_number"
    t.date "date_of_birth"
    t.string "phone_number"
    t.string "email"
    t.date "date_started"
    t.date "date_ended"
    t.bigint "teacher_id", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["teacher_id"], name: "index_teacher_profiles_on_teacher_id"
  end

  create_table "teachers", force: :cascade do |t|
    t.bigint "user_id", null: false
    t.string "teacher_id_number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_teachers_on_user_id"
  end

  create_table "terms", force: :cascade do |t|
    t.integer "number"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.string "other_names"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "examinations", "terms", column: "terms_id"
  add_foreign_key "student_profiles", "students"
  add_foreign_key "students", "grades"
  add_foreign_key "students", "users"
  add_foreign_key "teacher_profiles", "teachers"
  add_foreign_key "teachers", "users"
end
