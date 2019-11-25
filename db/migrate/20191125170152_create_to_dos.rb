class CreateToDos < ActiveRecord::Migration[5.2]
  def change
    create_table :to_dos do |t|
      t.references :to_do_template, foreign_key: true
      t.references :planted_veggie, foreign_key: true
      t.boolean :done
      t.date :due_at
      t.date :completed_at

      t.timestamps
    end
  end
end
