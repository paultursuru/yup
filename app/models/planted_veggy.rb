# == Schema Information
#
# Table name: planted_veggies
#
#  id           :bigint           not null, primary key
#  planting_day :date
#  sowing_day   :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  planter_id   :bigint
#  veggy_id     :bigint
#
# Indexes
#
#  index_planted_veggies_on_planter_id  (planter_id)
#  index_planted_veggies_on_veggy_id    (veggy_id)
#
# Foreign Keys
#
#  fk_rails_...  (planter_id => planters.id)
#

class PlantedVeggy < ApplicationRecord
  belongs_to :planter
  belongs_to :veggy
end
