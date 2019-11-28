class AddThiningDelayToVeggies < ActiveRecord::Migration[5.2]
  def change
    add_column :veggies, :thining_delay, :integer
  end
end
