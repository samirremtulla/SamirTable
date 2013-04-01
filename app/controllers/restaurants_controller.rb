class RestaurantsController < ApplicationController
  helper_method :sort_column, :sort_direction

  def index
    @restaurants = Restaurant.order(sort_column + ' ' + sort_direction)
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

  private
  def sort_column
    params[:sort] || "name"
  end

  def sort_direction
    params[:direction] || "asc"
  end

end

#http://railscasts.com/episodes/228-sortable-table-columns?view=asciicast
