class RestaurantsController < ApplicationController
  def index
    render json: Restaurant.all
  end

  def show
    render json: Restaurant.find(params[:id])
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)

    if @restaurant.save
      render json: @restaurant, status: :created, location: api_restaurant_path(@restaurant)
    else
      render json: @restaurant.errors, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:restaurant).permit(:name, :address, :phone)
  end
end
