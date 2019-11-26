class CreateToDoTemplates < ActiveRecord::Migration[5.2]
  def change
    create_table :to_do_templates do |t|
      t.text :description
      t.string :name

      t.timestamps
    end
  end
end
