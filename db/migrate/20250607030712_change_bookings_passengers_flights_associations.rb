class ChangeBookingsPassengersFlightsAssociations < ActiveRecord::Migration[8.0]
  def change
    remove_column :bookings, :passenger_id
    remove_column :bookings, :flight_id

    add_belongs_to :flights, :booking
    add_belongs_to :passengers, :booking

    create_table :flights_passengers, id: false do |t|
      t.belongs_to :flight
      t.belongs_to :passenger
    end
  end
end
