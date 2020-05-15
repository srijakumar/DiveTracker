class RenameDayToDate < ActiveRecord::Migration[6.0]
  def change
    rename_column :days, :day, :date
  end
end
