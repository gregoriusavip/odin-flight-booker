class ChangeColumnToAirportsAndFlights < ActiveRecord::Migration[8.0]
  def change
    change_column_null :airports, :code, false
    change_column_null :flights, :departure, false
    change_column_null :flights, :arrival, false
  end
end
