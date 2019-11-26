# == Schema Information
#
# Table name: planters
#
#  id          :bigint           not null, primary key
#  name        :string
#  orientation :string
#  size        :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  user_id     :bigint
#
# Indexes
#
#  index_planters_on_user_id  (user_id)
#
# Foreign Keys
#
#  fk_rails_...  (user_id => users.id)
#

class Planter < ApplicationRecord
  belongs_to :user
  has_many :planted_veggies
  has_many :veggies, through: :planted_veggies
end
