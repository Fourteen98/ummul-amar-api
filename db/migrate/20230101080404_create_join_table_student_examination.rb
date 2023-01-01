class CreateJoinTableStudentExamination < ActiveRecord::Migration[7.0]
  def change
    create_join_table :students, :examinations do |t|
      # t.index [:student_id, :examination_id]
      # t.index [:examination_id, :student_id]
    end
  end
end
