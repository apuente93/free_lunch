class AddImageUrlToStores < ActiveRecord::Migration
  def change
    add_column :stores, :image_url, :string
  end
end
