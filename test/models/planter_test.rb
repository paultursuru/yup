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

require 'test_helper'

class PlanterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
