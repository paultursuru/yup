class ToDo < ApplicationRecord
  belongs_to :to_do_template
  belongs_to :planted_veggie
end
