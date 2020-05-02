class CreateMarinelives < ActiveRecord::Migration[6.0]
  def change
    create_table :marinelives do |t|
      t.string :content
      t.integer :day_id

      t.timestamps
    end
  end
end
