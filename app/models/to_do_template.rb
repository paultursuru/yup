# == Schema Information
#
# Table name: to_do_templates
#
#  id          :bigint           not null, primary key
#  description :text
#  name        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class ToDoTemplate < ApplicationRecord
  has_many :veggy_to_dos
  has_many :veggies, through: :veggy_to_dos
end
