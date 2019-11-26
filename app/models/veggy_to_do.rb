# == Schema Information
#
# Table name: veggy_to_dos
#
#  id                   :bigint           not null, primary key
#  after_planting_delay :integer
#  initial              :boolean
#  periodicity          :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  to_do_template_id    :bigint
#  veggy_id             :bigint
#
# Indexes
#
#  index_veggy_to_dos_on_to_do_template_id  (to_do_template_id)
#  index_veggy_to_dos_on_veggy_id           (veggy_id)
#
# Foreign Keys
#
#  fk_rails_...  (to_do_template_id => to_do_templates.id)
#

class VeggyToDo < ApplicationRecord
  belongs_to :veggy
  belongs_to :to_do_template
end
