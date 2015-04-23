class AddStoreIdToProducts < ActiveRecord::Migration
  def change
    add_reference :products, :store, index: true
    add_foreign_key :products, :stores
  end
end
