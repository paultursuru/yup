class CreatePlanters < ActiveRecord::Migration[5.2]
  def change
    create_table :planters do |t|
      t.references :user, foreign_key: true
      t.integer :size
      t.string :orientation
      t.string :name

      t.timestamps
    end
  end
end
