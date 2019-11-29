class AddColorToPlanters < ActiveRecord::Migration[5.2]
  def change
    add_column :planters, :color, :string
  end
end
