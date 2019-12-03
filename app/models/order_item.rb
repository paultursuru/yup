# == Schema Information
#
# Table name: order_items
#
#  id         :bigint           not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  order_id   :bigint
#  veggy_id   :bigint
#
# Indexes
#
#  index_order_items_on_order_id  (order_id)
#  index_order_items_on_veggy_id  (veggy_id)
#
# Foreign Keys
#
#  fk_rails_...  (order_id => orders.id)
#  fk_rails_...  (veggy_id => veggies.id)
#

class OrderItem < ApplicationRecord
  belongs_to :order
  belongs_to :veggy
end
