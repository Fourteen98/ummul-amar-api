class CreateJoinTableTeacherStudent < ActiveRecord::Migration[7.0]
  def change
    create_join_table :teachers, :students do |t|
      # t.index [:teacher_id, :student_id]
      # t.index [:student_id, :teacher_id]
    end
  end
end
