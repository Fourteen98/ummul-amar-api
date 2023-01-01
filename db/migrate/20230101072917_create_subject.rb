class CreateSubject < ActiveRecord::Migration[7.0]
  def change
    create_table :subjects do |t|
      t.string :name
      t.string :section

      t.timestamps
    end
  end
end
