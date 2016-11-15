class ReservationsController < ApplicationController
  before_action :ensure_logged_in, :except => [:load_restaurant]
  before_action :load_restaurant, :except => [:index, :show]



  def index
    @restaurant = Restaurant.find(params[:user_id])
    @reservations = @restaurant.reservations
  end

  def show
    @restaurant = Restaurant.find(params[:restaurant_id])
    @reservations = @restaurant.reservations
  end

  def new
      @reservation = Reservation.new

  end

  def create
      @reservation = @restaurant.reservations.build(reservations_params)
      @reservation.user_id = current_user.id
    if @reservation.save
      redirect_to root_path, notice: "Reservation created successfully"
    else
      render 'new'
    end
  end

  def destroy
    @reservation = Reservation.find(params[:id])
    @reservation.destroy
  end

  private
  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def reservations_params
    params.require(:reservation).permit(:user_id, :restaurant_id, :datetime)
  end


end
