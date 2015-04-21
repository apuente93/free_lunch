class CreatePlaces < ActiveRecord::Migration
  def change
    create_table :places do |t|
      t.references :order, index: true
      t.references :user, index: true
      t.references :store, index: true
      t.references :product, index: true
      t.integer :quantity

      t.timestamps null: false
    end
    add_foreign_key :places, :orders
    add_foreign_key :places, :users
    add_foreign_key :places, :stores
    add_foreign_key :places, :products
  end
end
