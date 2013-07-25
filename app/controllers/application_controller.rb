class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def load_order
    @order = Order.find_or_initialize_by_id(session[:order_id],
                                            user_id: session[:user_id], status: "unsubmitted")
    if @order.new_record?
      @order.save!
      session[:order_id] = @order.id
    end
  end
end
