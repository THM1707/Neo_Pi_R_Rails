class DropAdvicesTable < ActiveRecord::Migration[5.2]
  def up
    drop_table :advices
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
