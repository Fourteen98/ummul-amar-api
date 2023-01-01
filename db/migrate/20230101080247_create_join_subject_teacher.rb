class CreateJoinSubjectTeacher < ActiveRecord::Migration[7.0]
  def change
    create_table :join_subject_teachers do |t|
      t.string :subjects
      t.string :teachers

      t.timestamps
    end
  end
end
