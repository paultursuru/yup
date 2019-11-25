# == Schema Information
#
# Table name: veggies
#
#  id                  :bigint           not null, primary key
#  name                :string
#  sun_orientation     :string
#  seed_level          :integer
#  sowing_start_date   :date
#  sowing_end_date     :date
#  planting_start_date :date
#  planting_end_date   :date
#  growing_time        :integer
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Veggy < ApplicationRecord
  has_many :planted_veggies
  has_many :planters, through: :planted_veggies
  has_many :veggy_to_dos
  has_many :to_do_templates, through: :veggy_to_dos
end
