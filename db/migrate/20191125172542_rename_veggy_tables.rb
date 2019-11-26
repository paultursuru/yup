class RenameVeggyTables < ActiveRecord::Migration[5.2]
  def change
    rename_table :veggie_to_dos, :veggy_to_dos
  end
end
