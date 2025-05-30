class CreateBookings < ActiveRecord::Migration[8.0]
  def change
    create_table :bookings do |t|
      t.timestamps
      t.belongs_to :passenger
      t.belongs_to :flight
    end
  end
end
