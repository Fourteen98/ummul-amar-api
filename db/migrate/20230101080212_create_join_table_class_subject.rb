class CreateJoinTableClassSubject < ActiveRecord::Migration[7.0]
  def change
    create_join_table :classes, :subjects do |t|
      # t.index [:class_id, :subject_id]
      # t.index [:subject_id, :class_id]
    end
  end
end
