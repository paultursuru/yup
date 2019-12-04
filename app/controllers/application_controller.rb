class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  before_action :set_order
  # protect_from_forgery with: :exception
  # before_action :set_order

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    # devise_parameter_sanitizer.permit(:sign_up, keys: [])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:first_name, :last_name, :level, :address])
  end

  def default_url_options
    { host: ENV["DOMAIN"] || "localhost:3000" }
  end
  # private

  # def set_order
  #   # @order = Order.find(session[:order_id])
  #   # rescue ActiveRecord::RecordNotFound
  #   @order = Order.create
  #   session[:order_id] = @order.id
  #   raise
  # end

  protected

  def after_sign_in_path_for(resource)
    dashboard_path
  end

  def set_order
    @current_order = current_user.orders.find_by(state: 'pending') if user_signed_in?
  end
end
