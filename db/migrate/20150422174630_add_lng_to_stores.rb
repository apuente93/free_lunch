class AddLngToStores < ActiveRecord::Migration
  def change
    add_column :stores, :lng, :float
  end
end
