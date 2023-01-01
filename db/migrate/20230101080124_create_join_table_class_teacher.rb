class CreateJoinTableClassTeacher < ActiveRecord::Migration[7.0]
  def change
    create_join_table :teachers, :classes do |t|
      # t.index [:teacher_id, :class_id]
      # t.index [:class_id, :teacher_id]
    end
  end
end
