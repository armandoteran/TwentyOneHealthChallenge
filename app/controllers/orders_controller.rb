class OrdersController < ApplicationController
  def new
    product_set
  end

  private

  def product_set
    @product = Product.find(params[:product_id])
  end
end
