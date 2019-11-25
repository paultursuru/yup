# == Schema Information
#
# Table name: planted_veggies
#
#  id           :bigint           not null, primary key
#  planter_id   :bigint
#  sowing_day   :date
#  planting_day :date
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  veggy_id     :bigint
#

class PlantedVeggy < ApplicationRecord
  belongs_to :planter
  belongs_to :veggy
end
