class ReservationsController < ApplicationController
  before_filter :load_restaurant

  def index
    @reservations = @restaurant.reservations
  end

  def new
    @reservation = Reservation.new
  end

  def create
    @reservation = Reservation.new(params[:reservation])
    @reservation.user_id = current_user.id
    @reservation.restaurant_id = @restaurant.id
    #check to see if capacity is available
    @check = Reservation.sum(:people, :conditions => {:restaurant_id => @restaurant.id, :date => @reservation.date, :time => @reservation.time})
    #http://en.wikibooks.org/wiki/Ruby_on_Rails/ActiveRecord/Calculations#Sum

    if @check < @restaurant.capacity
      if @reservation.save
        redirect_to root_path, notice: "Thank you for making a reservation!"
      else
        render action: :new, error: "HELLO"
      end
    else
      render action: :new, error: "HELLO"
    end

    #if it is ok, update capacity for the date
    #if not, send error

    #save

  end

  def load_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  # def edit
  # end

  # def destroy
  # end

  # def update
  # end

  # def show
  # end
end
