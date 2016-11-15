class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:id] = user.id
      redirect_to restaurants_url, :notice => "You are logged into SeatYourself!"
    else
      flash.now[:alert] = "The email or password is invalid"
      render "new"
    end
  end

  def destroy
    session[:id] = nil
    redirect_to restaurants_url, notice: "You have logged out of SeatYourself"
  end
end
