# == Schema Information
#
# Table name: veggy_to_dos
#
#  id                   :bigint           not null, primary key
#  to_do_template_id    :bigint
#  periodicity          :integer
#  initial              :boolean
#  after_planting_delay :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#  veggy_id             :bigint
#

class VeggyToDo < ApplicationRecord
  belongs_to :veggy
  belongs_to :to_do_template
end
