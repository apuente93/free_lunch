class OrdersController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  
  def new
  end
  
  def create
    @order = current_user.orders.build(params[:id])
    @product = Product.find(params[:product_id])
    @order.product_id = @product.id
    @order.user_id = current_user.id
    if @order.save
      flash[:success] = "Order added to checkout!"
      redirect_to :back 
    else
      redirect_to :back
    end
  end
  
  def destroy
    @order.destroy
    redirect_to :back
  end
  
  private
  
    def order_params
      params.require(:order).permit(:product_id, :user_id)
    end
    
    def correct_user
      @order = current_user.orders.find_by(id: params[:id])
      redirect_to root_url if @order.nil?
    end
    
    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
      order_location
        flash[:danger] = "Please log in as admin user."
        redirect_to login_url
      end
    end
    
end
