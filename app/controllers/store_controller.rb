class StoreController < ApplicationController
  def index
    @time = Time.now
    @products = Product.order(:title)
    
    @counter = session[:counter]
    @counter.nil? ? @counter = 1 : @counter+=1
    session[:counter] = @counter
    @shown_message = "You've been here #{@counter} times" if session[:counter] >5
  end
end
