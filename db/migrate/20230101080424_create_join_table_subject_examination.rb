class CreateJoinTableSubjectExamination < ActiveRecord::Migration[7.0]
  def change
    create_join_table :subjects, :examinations do |t|
      # t.index [:subject_id, :examination_id]
      # t.index [:examination_id, :subject_id]
    end
  end
end
