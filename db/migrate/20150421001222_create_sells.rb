class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|
      t.references :store, index: true
      t.references :product, index: true
      t.float :price

      t.timestamps null: false
    end
    add_foreign_key :sells, :stores
    add_foreign_key :sells, :products
  end
end
