class StoreController < ApplicationController
  
  def new
    @store = Store.new
  end
  
end
