class AddPriceToProducts < ActiveRecord::Migration
  def up
    change_column :products, :price, :decimal, precision: 12, scale: 3
  end

  def down
    change_column :products, :price, :float
  end
end
