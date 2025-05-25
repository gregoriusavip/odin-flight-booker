class AddNullToFlightColumns < ActiveRecord::Migration[8.0]
  def change
    change_column_null(:flights, :arrival, false)
    change_column_null(:flights, :departure, false)
  end
end
