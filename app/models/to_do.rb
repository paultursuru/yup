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

class ToDo < ApplicationRecord
  belongs_to :to_do_template
  belongs_to :planted_veggy
  # TODO validations

  delegate :name, :description, to: :to_do_template

  # def due_at_end
  #   due_at + 15 * 60
  # end

  def mark_as_done!
    self.done = true
    save
  end
end
