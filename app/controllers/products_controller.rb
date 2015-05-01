class ProductsController < ApplicationController
  before_action :logged_in_user, only: [:new, :create]
  before_action :admin_user,     only: [:new, :create]
  
  def new
    @product = Product.new
  end
  
  def create
    @product = Product.new(product_params)
    if @product.save
      flash[:success] = "Product created!"
      redirect_to root_path
    else
      redirect_to 'new'
    end
  end
  
  private

    def product_params
      params.require(:product).permit(:name, :category, :image_url, :price, :store_id)
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
