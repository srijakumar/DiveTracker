class CreateLogs < ActiveRecord::Migration[6.0]
  def change
    create_table :logs do |t|
      t.string :location
      t.string :current
      t.string :visibility
      t.integer :depth
      t.integer :day_id

      t.timestamps
    end
  end
end
