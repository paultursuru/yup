class AddChangesToVeggies < ActiveRecord::Migration[5.2]
  def change
    remove_column :veggies, :sun_orientation, :string
    add_column :veggies, :sun_need, :string
    add_column :veggies, :watering_period, :integer
  end
end
