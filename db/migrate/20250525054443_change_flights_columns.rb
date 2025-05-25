class ChangeFlightsColumns < ActiveRecord::Migration[8.0]
  def change
    change_column(:flights, :arrival, :date)
    change_column(:flights, :departure, :date)
  end
end
