class RestaurantController < ApplicationController
  def show
    @restaurant = Restaurant.find(params[:id])

    if current_user
      @reservation = @restaurant.reservation.build
    end

  end
end
