class Passenger < ApplicationRecord
  has_many :bookings
  has_and_belongs_to_many :flights
end
