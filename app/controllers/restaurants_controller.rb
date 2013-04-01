class RestaurantsController < ApplicationController
  
  def index
    @restaurants = Restaurants.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def new
    
  end

  def update
  
  end

  def create

  end

  def edit

  end

  def destroy


  end


end
