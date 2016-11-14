class RestaurantController < ApplicationController

  def index
    @restaurant = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end
end
#   def new
#     @restaurant = Restaurant.new
#   end
#
#   def edit
#     @restaurant = Restaurant.find(params[:id])
#   end
#
#   def create
#     @restaurant = Restaurant.find(params[:id])
#     @restaurant.save
#       # redirect_to restaurant_index_url
#   end
#
#   def update
#     @restaurant = Restaurant.find(params[:id])
#     @restaurant.update_attributes(restaurant_params)
#       # redirect_to restaurant_url(@restaurant)
#       @restaurant.save
#   end
#
#   def destroy
#     @restaurant = Restaurant.find(params[:id])
#     @restaurant.destroy
#   end
#
#   private
#   def restaurant_params
#     params.require(:restaurant).permit(:name, :location, :url)
#   end
# end
