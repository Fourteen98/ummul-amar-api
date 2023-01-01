class CreateJoinTableGradeTeacher < ActiveRecord::Migration[7.0]
  def change
    create_join_table :teachers, :grades do |t|
      # t.index [:teacher_id, :grade_id]
      # t.index [:grade_id, :teacher_id]
    end
  end
end
