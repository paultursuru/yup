class CreateVeggies < ActiveRecord::Migration[5.2]
  def change
    create_table :veggies do |t|
      t.string :name
      t.string :sun_orientation
      t.integer :seed_level
      t.date :sowing_start_date
      t.date :sowing_end_date
      t.date :planting_start_date
      t.date :planting_end_date
      t.integer :growing_time

      t.timestamps
    end
  end
end
