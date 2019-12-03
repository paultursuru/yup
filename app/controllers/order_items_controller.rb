class OrderItemsController < ApplicationController
  def create
    @veggy = Veggy.find(params[:veggy_id])
    if current_user.orders.find_by(state: 'pending')
      OrderItem.create!(veggy: @veggy, order: current_user.orders.find_by(state: 'pending'))
    else
      order = Order.create!(user: current_user, state: 'pending')
      OrderItem.create!(veggy: @veggy, order: current_user.orders.find_by(state: 'pending'))
    end
    respond_to do |format|
      format.html { redirect_to dashboard_path }
      format.js
    end
  end
end
