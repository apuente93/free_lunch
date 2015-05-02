class AddProductIdToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :product, index: true
    add_foreign_key :orders, :products
  end
end
