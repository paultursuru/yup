# == Schema Information
#
# Table name: to_dos
#
#  id                :bigint           not null, primary key
#  completed_at      :date
#  done              :boolean          default(FALSE)
#  due_at            :date
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  planted_veggy_id  :bigint
#  to_do_template_id :bigint
#
# Indexes
#
#  index_to_dos_on_planted_veggy_id   (planted_veggy_id)
#  index_to_dos_on_to_do_template_id  (to_do_template_id)
#
# Foreign Keys
#
#  fk_rails_...  (to_do_template_id => to_do_templates.id)
#

require 'test_helper'

class ToDoTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
