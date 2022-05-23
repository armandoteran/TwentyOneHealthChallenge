class OrdersController < ApplicationController
  def new
    product_set
  end

  def create
    @product = Product.find(params[:product_id])
    @order = Order.new(order_params)
    @order.user = current_user
    @order.product = @product
    @order.save
    redirect_to root_path
  end

  private

  def product_set
    @product = Product.find(params[:product_id])
    @order = Order.new
  end

  def order_params
    params.require(:order).permit(:product_id)
  end
end
