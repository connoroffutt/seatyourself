class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to restaurant_index_url, :notice => "You are logged into SeatYourself!"
    else
      flash.now[:alert] = "The email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to restaurant_index_url, notice: "You have logged out of SeatYourself"
  end
end
