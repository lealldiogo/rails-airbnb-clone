class AddColumnsToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :brand, :string
    add_column :products, :design, :string
    add_column :products, :group, :string
    add_column :products, :year, :integer
  end
end
