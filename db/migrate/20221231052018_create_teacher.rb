class CreateTeacher < ActiveRecord::Migration[7.0]
  def change
    create_table :teachers do |t|
      t.string :first_name
      t.string :last_name
      t.string :other_names
      t.string :date_of_birth
      t.string :index_number
      t.string :national_identification_number
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end
