class DeleteStuffFromOrders < ActiveRecord::Migration
  def change
    remove_column :orders, :user_id
    remove_column :orders, :product_id
    remove_column :orders, :order_number
    add_column :orders, :total, :decimal, precision: 12, scale: 3
  end
end
