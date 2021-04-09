class AddFechaToReport < ActiveRecord::Migration[5.2]
  def change
    add_column :reports, :fecha, :date
  end
end
