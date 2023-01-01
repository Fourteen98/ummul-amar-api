class CreateStudentProfile < ActiveRecord::Migration[7.0]
  def change
    create_table :student_profiles do |t|
      t.string :address
      t.string :identification_number
      t.string :date_of_birth
      t.string :date_of_addmission
      t.string :date_of_completion
      t.string :father_first_name
      t.string :father_last_name
      t.string :father_phone_number
      t.string :father_occupation
      t.string :father_email
      t.string :mother_first_name
      t.string :mother_last_name
      t.string :mother_phone_number
      t.string :mother_occupation
      t.string :mother_email
      t.references :student, null: false, foreign_key: true

      t.timestamps
    end
  end
end
