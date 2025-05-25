class AddIndexToAirports < ActiveRecord::Migration[8.0]
  def change
    add_index :airports, :code, unique: true
  end
end
