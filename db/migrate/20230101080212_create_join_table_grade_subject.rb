class CreateJoinTableGradeSubject < ActiveRecord::Migration[7.0]
  def change
    create_join_table :classes, :subjects do |t|
      # t.index [:grade_id, :grade_id]
      # t.index [:subject_id, :class_id]
    end
  end
end
