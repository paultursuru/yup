class ReplaceReferencesVeggy < ActiveRecord::Migration[5.2]
  def change
    remove_reference :planted_veggies, :veggie
    add_reference :planted_veggies, :veggy
    remove_reference :to_dos, :planted_veggie
    add_reference :to_dos, :planted_veggy
    remove_reference :veggie_to_dos, :veggie
    add_reference :veggie_to_dos, :veggy
  end
end
