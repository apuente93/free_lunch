class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      params[:session][:remember_me] == '1' ? remember(user) : forget(user)
      redirect_back_or user
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
  end

  def destroy
    @orders = Order.all
    @orders.each do |order|
      if order.user_id.nil?
        end_order
        order.destroy
      end
    end
    log_out if logged_in?
    redirect_to root_url
  end
end
