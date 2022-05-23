class WelcomeController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    if user_signed_in? && !current_user.order.nil?
      @order = Order.find_by(user_id: current_user)
      @product = Product.find_by(id: current_user.order.product_id)
    else
      @products = Product.all
    end
  end
end
