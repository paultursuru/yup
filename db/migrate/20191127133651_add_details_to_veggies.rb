class AddDetailsToVeggies < ActiveRecord::Migration[5.2]
  def change
    add_column :veggies, :nutritional_infos, :text , default: "more infos soon !"
  end
end
