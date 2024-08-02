class ProductsController < ApplicationController
 before_action :authenticate_customer!
  def index
    @products = Product.all
  end

  def search
    @q = Product.ransack(params[:q])
    @products = @q.result
  end

  def show
    @product = Product.find(params[:id])
  end
end
