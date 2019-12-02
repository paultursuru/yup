class OrderItemsController < ApplicationController
  def create
    if current_user.orders.find_by(state: 'pending')
      OrderItem.create!(veggy: Veggy.find(params[:veggy_id]), order: current_user.orders.find_by(state: 'pending'))
    else
      order = Order.create!(user: current_user, state: 'pending')
      OrderItem.create!(veggy: Veggy.find(params[:veggy_id]), order: order)
    end
    redirect_to dashboard_path
  end
end
