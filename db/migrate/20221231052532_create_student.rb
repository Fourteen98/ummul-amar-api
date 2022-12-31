class CreateStudent < ActiveRecord::Migration[7.0]
  def change
    create_table :students do |t|
      t.string :first_name
      t.string :last_name
      t.string :other_names
      t.date :date_of_birth
      t.integer :age
      t.string :index_number
      t.string :identification_number
      t.date :date_of_addmission
      t.date :date_of_completion
      t.string :father_first_name
      t.string :father_last_name
      t.string :father_phone_number
      t.string :father_occupation
      t.string :mother_first_name
      t.string :mother_last_name
      t.string :mother_phone_number

      t.timestamps
    end
  end
end
