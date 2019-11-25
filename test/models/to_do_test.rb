# == Schema Information
#
# Table name: to_dos
#
#  id                :bigint           not null, primary key
#  to_do_template_id :bigint
#  done              :boolean
#  due_at            :date
#  completed_at      :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  planted_veggy_id  :bigint
#

require 'test_helper'

class ToDoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
