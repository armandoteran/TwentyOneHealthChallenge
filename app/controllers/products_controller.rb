class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: :show
  def show
    set_product
  end

  private

  def set_product
    @product = Product.find(params[:id])
  end
end
