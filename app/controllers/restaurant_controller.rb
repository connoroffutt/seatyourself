class RestaurantController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
      @restaurant = Restaurant.find(params[:id])
      @restaurant.reservations
  end


end
