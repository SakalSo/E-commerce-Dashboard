class FrontEndApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :current_cart
  helper_method :current_cart

  def current_cart
    @current_cart ||= MyShoppingCart.new(token: @cart_token)
  end
  private
  def cart_token
    return @cart_token unless @cart_token.nil?
    session[:cart_token] = SecureRandom.hex(8)
    return @cart_token = session[:cart_token]
  end
end
