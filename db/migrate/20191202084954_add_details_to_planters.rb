class AddDetailsToPlanters < ActiveRecord::Migration[5.2]
  def change
    remove_column :planters, :orientation, :string
    add_column :planters, :sun, :string
  end
end
