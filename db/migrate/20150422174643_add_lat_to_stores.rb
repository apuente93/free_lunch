class AddLatToStores < ActiveRecord::Migration
  def change
    add_column :stores, :lat, :float
  end
end
