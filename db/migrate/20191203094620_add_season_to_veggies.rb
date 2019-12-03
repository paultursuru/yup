class AddSeasonToVeggies < ActiveRecord::Migration[5.2]
  def change
    add_column :veggies, :season, :string
  end
end
