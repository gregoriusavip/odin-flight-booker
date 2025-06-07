class ChangeAssociationsForBookingsAndFlights < ActiveRecord::Migration[8.0]
  def change
    remove_column :flights, :booking_id

    create_table :flights_bookings, id: false do |t|
      t.belongs_to :flight
      t.belongs_to :booking
    end
  end
end
