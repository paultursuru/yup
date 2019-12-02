class AddPriceToVeggies < ActiveRecord::Migration[5.2]
  def change
    add_monetize :veggies, :price, currency: { present: false }
  end
end
