class RenameDepartureToDeparting < ActiveRecord::Migration[8.0]
  def change
    rename_column :flights, :destination_airport_id, :departure_airport_id
  end
end
