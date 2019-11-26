# == Schema Information
#
# Table name: planters
#
#  id          :bigint           not null, primary key
#  user_id     :bigint
#  size        :integer
#  orientation :string
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Planter < ApplicationRecord
  belongs_to :user
  has_many :planted_veggies
  has_many :veggies, through: :planted_veggies
end
