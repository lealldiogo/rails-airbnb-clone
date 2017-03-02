class ChangeStatusToBookings < ActiveRecord::Migration[5.0]
  def up
    change_column :bookings, :status, :string, default: "em negociacão"
  end

  def down
  end

end
