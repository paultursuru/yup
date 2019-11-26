class AddChangesToTodos < ActiveRecord::Migration[5.2]
  def change
    remove_column :to_dos, :done, :boolean, default: true
    add_column :to_dos, :done, :boolean, default: false
  end
end
