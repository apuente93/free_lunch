class StoresController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]
  before_action :admin_user,     only: [:new, :create]
  
  def new
    @store = Store.new
  end
  
  def create
    @store = Store.new(store_params)
    if @store.save
      flash[:success] = "Store created!"
      redirect_to root_path
    else
      redirect_to 'new'
    end
  end
  
  def show
    @store = Store.find(params[:id])
    @user = User.find(current_user.id)
    if params[:cat].to_s.length == 0
      @products = @store.products
    else
      @products = @store.products.where(category: params[:cat])
    end
    puts params[:cat]
    puts params[:id]
    if logged_in?
      @order = current_order
      @order_item = current_order.order_items.new
      @order_items = current_order.order_items.order("id DESC")
    end
  end
  
  private

    def store_params
      params.require(:store).permit(:name, :address, :lng, :lat, :image_url)
    end
    
    # Confirms a logged-in user.
    def logged_in_user
      unless logged_in?
      store_location
        flash[:danger] = "Please log in as admin user."
        redirect_to login_url
      end
    end
    
    # Confirms an admin user.
    def admin_user
      unless current_user.admin?
        flash[:danger] = "Please log in as admin user."
        redirect_to(root_url)
      end
    end
  
end

