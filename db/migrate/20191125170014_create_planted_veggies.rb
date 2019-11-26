class CreatePlantedVeggies < ActiveRecord::Migration[5.2]
  def change
    create_table :planted_veggies do |t|
      t.references :planter, foreign_key: true
      t.references :veggie, foreign_key: true
      t.date :sowing_day
      t.date :planting_day

      t.timestamps
    end
  end
end
