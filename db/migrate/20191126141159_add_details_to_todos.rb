class AddDetailsToTodos < ActiveRecord::Migration[5.2]
  def change
    remove_column :to_dos, :done
    add_column :to_dos, :done, :boolean, default: :false
  end
end
