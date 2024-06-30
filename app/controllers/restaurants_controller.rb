class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @restaurants = Restaurant.order(created_at: :desc)
  end

  def show
  end

  def new
    @restaurant = Restaurant.new
  end

  def edit
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    respond_to do |format|
      format.html { redirect_to restaurant_path(@restaurant) }
      format.turbo_stream
    end
  end

  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end

  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
