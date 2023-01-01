class CreateExaminations < ActiveRecord::Migration[7.0]
  def change
    create_table :examinations do |t|
      t.date :year
      t.decimal :homework
      t.decimal :classwork
      t.decimal :mid_term
      t.date :date_started
      t.date :date_ended
      t.references :terms, null: false, foreign_key: true

      t.timestamps
    end
  end
end
