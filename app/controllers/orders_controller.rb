class OrdersController < ApplicationController
  def show
    @order = Order.find(params[:id])
    total = []
    @order.order_items.each do |item|
      total << item.veggy.price_cents
    end
    @order.amount_cents_cents = total.sum
  end

  def update
    order = Order.find(params[:id])
    order.update(order_params)
    session = Stripe::Checkout::Session.create(
      payment_method_types: ['card'],
      line_items: [{
        name: "Order #{order.id}",
        amount: order.amount_cents_cents,
        currency: 'eur',
        quantity: 1
      }],
      # success_url: confirmation_url,
      success_url: "http://www.yoururbanpotager.com/confirmation",
      cancel_url: "http://www.yoururbanpotager.com/dashboard"
      # success_url: Rails.env == 'development' ? dashboard_path : "https://www.yoururbanpotager.com/confirmation",
      # cancel_url: dashboard_path
    )

    order.update(checkout_session_id: session.id)
    redirect_to new_order_payment_path(order)
    order.update(state: 'paid')
  end

  private

  def order_params
    params.require(:order).permit(:amount_cents_cents)
  end
end
