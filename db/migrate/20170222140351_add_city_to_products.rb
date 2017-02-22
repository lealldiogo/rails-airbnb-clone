class AddCityToProducts < ActiveRecord::Migration[5.0]
  def change
    add_column :products, :city, :string
  end
end
