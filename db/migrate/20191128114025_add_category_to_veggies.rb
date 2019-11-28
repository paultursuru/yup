class AddCategoryToVeggies < ActiveRecord::Migration[5.2]
  def change
    add_column :veggies, :category, :string
  end
end
