class VeggieToDo < ApplicationRecord
  belongs_to :veggie
  belongs_to :to_do_template
end
