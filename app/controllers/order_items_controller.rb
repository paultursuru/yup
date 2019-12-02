class OrderItemsController < ApplicationController
  def create
    veggy = Veggy.find(params[:veggy_id])
    order = Order.find(params[:current_user])
    raise
    order_item = OrderItem.create!(order: order, veggy: veggy)
  end
end
