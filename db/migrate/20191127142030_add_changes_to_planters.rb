class AddChangesToPlanters < ActiveRecord::Migration[5.2]
  def change
    remove_column :planters, :size, :integer
    add_column :planters, :size, :string
  end
end
