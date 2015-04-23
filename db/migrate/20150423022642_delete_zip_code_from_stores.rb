class DeleteZipCodeFromStores < ActiveRecord::Migration
  def change
    remove_column :stores, :zip_code
  end
end
