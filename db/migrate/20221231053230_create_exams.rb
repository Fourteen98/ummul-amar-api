class CreateExams < ActiveRecord::Migration[7.0]
  def change
    create_table :exams do |t|
      t.string :subject
      t.date :year
      t.integer :term
      t.decimal :home_work
      t.decimal :class_work
      t.decimal :mid_term
      t.decimal :exams_mark
      t.string :grade

      t.timestamps
    end
  end
end
