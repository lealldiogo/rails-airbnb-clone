class CreateInstruments < ActiveRecord::Migration[5.0]
  def change
    create_table :instruments do |t|
      t.string :brand
      t.string :design
      t.string :group
      t.integer :year

      t.timestamps
    end
  end
end
