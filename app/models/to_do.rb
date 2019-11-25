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

class ToDo < ApplicationRecord
  belongs_to :to_do_template
  belongs_to :planted_veggy
  # TODO validations

  delegate :description, to: :to_do_template
end
