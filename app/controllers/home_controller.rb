class HomeController < ApplicationController
  before_action :authenticate_customer!

  def index
    @products = Product.limit(4)
  end
end
