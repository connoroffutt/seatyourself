class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  helper_method :current_user

  def ensure_logged_in
    unless current_user
      flash[:alert] = "Please log in to make a reservation!"
      redirect_to restaurant_index_url
    end
  end
 # need to add "before_action :ensure_logged_in, only: [:create, :destroy]" to restaurants_controller
 # delete this after implementing
end
