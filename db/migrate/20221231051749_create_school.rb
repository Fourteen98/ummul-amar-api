class CreateSchool < ActiveRecord::Migration[7.0]
  def change
    create_table :schools do |t|
      t.string :name
      t.date :date_created
      t.string :location
      t.string :motto
      t.string :mission
      t.string :vision
      t.string :core_value

      t.timestamps
    end
  end
end
