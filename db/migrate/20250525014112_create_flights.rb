class CreateFlights < ActiveRecord::Migration[8.0]
  def change
    create_table :flights do |t|
      t.timestamps
      t.time :departure
      t.time :arrival
    end
  end
end
