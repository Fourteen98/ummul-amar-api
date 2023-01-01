class CreateTeacher < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :teacher_id_number

      t.timestamps
    end
  end
end
