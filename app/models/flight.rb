class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: "Airport"
  belongs_to :departure_airport, class_name: "Airport"

  has_and_belongs_to_many :bookings
  has_and_belongs_to_many :passengers

  validates :departure, :arrival, presence: true
end
