# app/controllers/products_controller.rb
class ProductsController < ApplicationController
  def search
    @q = Product.ransack(params[:q])
    @products = @q.result
  end

  def show
    @product = Product.find(params[:id])
  end
end
