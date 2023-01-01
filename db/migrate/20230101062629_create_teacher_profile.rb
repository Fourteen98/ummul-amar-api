class CreateTeacherProfile < ActiveRecord::Migration[7.0]
  def change
    create_table :teacher_profiles do |t|
      t.string :address
      t.string :identification_number
      t.date :date_of_birth
      t.string :phone_number
      t.string :email
      t.date :date_started
      t.date :date_ended
      t.references :teacher, null: false, foreign_key: true

      t.timestamps
    end
  end
end
