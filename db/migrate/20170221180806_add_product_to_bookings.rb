class AddProductToBookings < ActiveRecord::Migration[5.0]
  def change
    add_reference :bookings, :product, foreign_key: true
  end
end
