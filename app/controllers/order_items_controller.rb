class OrderItemsController < ApplicationController
  before_action :set_order_item, only: %I[destroy]
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

  def destroy
    @order_item.destroy
    @order = @order_item.order
    total = []
    @order.order_items.each do |item|
      total << item.veggy.price_cents
    end
    @order.amount_cents_cents = total.sum

    respond_to do |format|
      format.html { redirect_to order_path(order)}
      format.js # <-- will render `app/views/reviews/create.js.erb`
    end
  end

  private

  def set_order_item
    @order_item = OrderItem.find(params[:id])
  end
end
