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

require 'test_helper'

class PlanterTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
