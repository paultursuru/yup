# == Schema Information
#
# Table name: planters
#
#  id         :bigint           not null, primary key
#  color      :string
#  name       :string
#  size       :string
#  sun        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :bigint
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
  has_many :planted_veggies, dependent: :destroy
  has_many :veggies, through: :planted_veggies
  has_many :to_dos, through: :planted_veggies
end
