# == Schema Information
#
# Table name: veggies
#
#  id                  :bigint           not null, primary key
#  growing_time        :integer
#  name                :string
#  nutritional_infos   :text             default("more infos soon !")
#  planting_end_date   :date
#  planting_start_date :date
#  seed_level          :integer
#  sowing_end_date     :date
#  sowing_start_date   :date
#  sun_orientation     :string
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

class Veggy < ApplicationRecord
  has_many :planted_veggies
  has_many :planters, through: :planted_veggies
  has_many :veggy_to_dos
  has_many :to_do_templates, through: :veggy_to_dos
  has_one_attached :photo
end
