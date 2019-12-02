class OrdersController < ApplicationController
  def create
    # amount_cents = OrderItems.all
    order = Order.create!(amount_cents: 0, state: 'pending', user: current_user)

    # session = Stripe::Checkout::Session.create(
    #   payment_method_types: ['card'],
    #   line_items: [{
    #     # images: [teddy.photo_url],
    #     amount: amount_cents,
    #     currency: 'eur',
    #     quantity: 1
    #   }],
    #   success_url: order_url(order),
    #   cancel_url: order_url(order)
    # )

    # order.update(checkout_session_id: session.id)
    # redirect_to new_order_payment_path(order)
  end
end
