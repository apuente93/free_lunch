class DropTables < ActiveRecord::Migration
  def up
    drop_table :places
    drop_table :favorites
    drop_table :uses
    drop_table :recipes
    drop_table :sells
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
