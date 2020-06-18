class RestaurantsController < ApplicationController
  # List all restaurants (index)
  def index
    @restaurants = Restaurant.all
  end

  # List one restaurant (show)
  def show
    @restaurant = Restaurant.find(params[:id])
  end

  # Create new restaurant (new and create)
  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to restaurants_path
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
