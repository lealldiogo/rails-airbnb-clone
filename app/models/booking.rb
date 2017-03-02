class Booking < ApplicationRecord
  BOOKING_STATUS = ["em negociacão", "aceito", "alugado", "entregue", "negado"]
  belongs_to :product
  belongs_to :user
  validates :status, inclusion: { in: BOOKING_STATUS }
end
