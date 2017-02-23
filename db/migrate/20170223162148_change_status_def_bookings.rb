class ChangeStatusDefBookings < ActiveRecord::Migration[5.0]
  def up
    change_column :bookings, :status, :string, default: "negotiating"
  end

  def down
  end
end
