class AddOrderStatusIdToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :order_status, index: true
    add_foreign_key :orders, :order_statuses
  end
end
