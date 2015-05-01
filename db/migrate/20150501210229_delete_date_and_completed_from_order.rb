class DeleteDateAndCompletedFromOrder < ActiveRecord::Migration
  def change
    remove_column :orders, :date
    remove_column :orders, :completed
  end
end
