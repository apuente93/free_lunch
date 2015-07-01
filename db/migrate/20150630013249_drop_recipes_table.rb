class DropRecipesTable < ActiveRecord::Migration
  def up
    drop_table :recipes
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
