class ReservationController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy]
  before_action :load_restaurant
  before_action :load_user

  def show
    @reservation = Reservation.find(params[:id])
  end

  def new
    @reservation = @restaurant.reservation.build(reservation_params)
    @reservation.user = current_user

    if @reservation.save
      redirect_to reservation_path(@reservation), notice: "Reservation created sucessfully"
    else
      render "restaurant/show"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private
  def reservation_params
    params.require(:restaurant).permit(:restaurant_id)
  end

  def load_restaurant
    @restaurant = restaurant.find(params[:product_id])
  end

  def load_user
    @user = user.find(params[:user_id])
  end
end
