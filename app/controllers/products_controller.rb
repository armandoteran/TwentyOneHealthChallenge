class ProductsController < ApplicationController
  def show
    set_product
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
