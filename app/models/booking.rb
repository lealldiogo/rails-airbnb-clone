class Booking < ApplicationRecord
  BOOKING_STATUS = ["negotiating", "deal reached", "rented", "finished", "denied"]
  belongs_to :product
  belongs_to :user
  validates :status, inclusion: { in: BOOKING_STATUS }
end
