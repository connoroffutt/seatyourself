class RestaurantsController < ApplicationController
before_action :ensure_logged_in, :except => [:index]

  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      redirect_to restaurants_path, :notice => "New restaurant created"
    else
      render 'new'
    end
  end

  def show
      @restaurant = Restaurant.find(params[:id])

      if current_user
        @reservation = @restaurant.reservations.build
  end
end

private
  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :cuisine, :image)
  end

end
