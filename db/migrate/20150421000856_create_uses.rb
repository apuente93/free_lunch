class CreateUses < ActiveRecord::Migration
  def change
    create_table :uses do |t|
      t.references :recipe, index: true
      t.references :product, index: true
      t.string :amount

      t.timestamps null: false
    end
    add_foreign_key :uses, :recipes
    add_foreign_key :uses, :products
  end
end
