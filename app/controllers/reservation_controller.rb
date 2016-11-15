class ReservationController < ApplicationController
  before_action :ensure_logged_in, only: [:create, :destroy]
  before_action :load_restaurant
  before_action :load_user

  def new
    @reservation = Reservation.new
  end

  def show
    @reservation = Reservation.find(params[:id])
  end



  def create
  #  @reservation = @restaurant.reservations.build(reservation_params)


    @reservation = Reservation.new(
    user_id: current_user.id,
    restaurant_id: @restaurant.id,
    datetime: datetime.now.strftime('%Y-%m-%d %I:%M:%S') 
    )
    # @reservation.save

    if @reservation.save
      redirect_to reservation_path(@reservation), notice: "Reservation created sucessfully"
    else
      render "reservation/show"
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
