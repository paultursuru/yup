class CreateVeggieToDos < ActiveRecord::Migration[5.2]
  def change
    create_table :veggie_to_dos do |t|
      t.references :veggie, foreign_key: true
      t.references :to_do_template, foreign_key: true
      t.integer :periodicity
      t.boolean :initial
      t.integer :after_planting_delay

      t.timestamps
    end
  end
end
