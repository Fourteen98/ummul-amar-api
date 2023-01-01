class CreateTerm < ActiveRecord::Migration[7.0]
  def change
    create_table :terms do |t|
      t.integer :number

      t.timestamps
    end
  end
end
