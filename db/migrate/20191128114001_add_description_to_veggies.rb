class AddDescriptionToVeggies < ActiveRecord::Migration[5.2]
  def change
    add_column :veggies, :description, :string
  end
end
