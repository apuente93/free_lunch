class OrdersController < ApplicationController
  before_action :logged_in_user, only: [:create, :destroy]
  before_action :correct_user,   only: :destroy
  
  def new
  end
  
  def create
    @order = current_order
    @order.user_id = current_user.id
    @order.order_status_id = 2
    if @order.save
      end_order
      flash[:success] = "Order created!"
      redirect_to orders_path
    else
      end_order
      redirect_to :back
    end
  end
  
  def update
    end_order
    @order = Order.find(params[:id])
    if @order.update_attributes(order_params)
      redirect_to :back
    else
      redirect_to :back
    end
  end
  
  def destroy
    Order.find(params[:id]).destroy
    flash[:success] = "Order deleted"
    redirect_to :back
  end
  
  private
  
    def order_params
      params.require(:order).permit(:user_id, :total, :order_status_id)
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
