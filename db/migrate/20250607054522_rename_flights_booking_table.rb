class RenameFlightsBookingTable < ActiveRecord::Migration[8.0]
  def change
    rename_table :flights_bookings, :bookings_flights
  end
end
