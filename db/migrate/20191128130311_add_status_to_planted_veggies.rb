class AddStatusToPlantedVeggies < ActiveRecord::Migration[5.2]
  def change
    add_column :planted_veggies, :status, :boolean, default: false
  end
end
