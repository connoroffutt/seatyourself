class ReservationController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy]
  before_action :load_restaurant
  before_action :load_user

  def new
    @reservation = Reservation.new
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservation = @restaurant.reservations.find(params[:id])
  end

  def create
      @reservation = @restaurant.reservations.build(reservation_params)
      @reservation.user_id = current_user.id
    if @reservation.save
      redirect_to reservation_path(@reservation), notice: "Reservation created successfully"
    else
      render "reservation/new"
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private
  def reservation_params
    params.require(:reservation).permit(:user_id, :restaurant_id)
  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def load_user
    @user = current_user
  end
end
