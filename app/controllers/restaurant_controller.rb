class RestaurantController < ApplicationController

  def index
    @restaurant = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

private

  def restaurant_params
    params.require(:restaurant).permit(:name, :location)
  end
end
