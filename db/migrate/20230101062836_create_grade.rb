class CreateGrade < ActiveRecord::Migration[7.0]
  def change
    create_table :grades do |t|
      t.string :name
      t.integer :class_number
      t.integer :occupancy
      t.string :section

      t.timestamps
    end
  end
end
