class StoreController < ApplicationController
  def index
    @time = Time.now
    @products = Product.order(:title)
  end
end
