class AddProductToInstruments < ActiveRecord::Migration[5.0]
  def change
    add_reference :instruments, :product, foreign_key: true
  end
end
