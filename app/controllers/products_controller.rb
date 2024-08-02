class ProductsController < ApplicationController
  before_action :authenticate_customer!

  def index
    @pagy, @products = pagy(Product.all)
  end

  def search
    @q = Product.ransack(params[:q])
    @products = @q.result
  end

  def show
    @product = Product.find(params[:id])
  end
end
