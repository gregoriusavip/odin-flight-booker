class Booking < ApplicationRecord
  has_many :passengers
  has_and_belongs_to_many :flights

  accepts_nested_attributes_for :passengers
end
