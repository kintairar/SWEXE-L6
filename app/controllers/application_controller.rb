class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  
  helper_method :current_cart
  private
    def current_cart
      if session[:cart_id]
        cart = Cart.find(session[:cart_id])
      else
        cart = Cart.create
        session[:cart_id] = cart.id
      end
      cart
    end
end
