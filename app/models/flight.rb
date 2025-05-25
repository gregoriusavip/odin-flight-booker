class Flight < ApplicationRecord
  belongs_to :arrival_airport, class_name: "Airport"
  belongs_to :destination_airport, class_name: "Airport"

  validates :departure, :arrival, presence: true
end
