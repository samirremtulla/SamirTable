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
    # @reservation.date = [@reservation.date_1i, @reservation.date_2i, @reservation.date_3i].join("-")
    #check to see if capacity is available
    @check = Reservation.sum(:people, :conditions => {:restaurant_id => @restaurant.id, :date => @reservation.date, :time => @reservation.time})
    #http://en.wikibooks.org/wiki/Ruby_on_Rails/ActiveRecord/Calculations#Sum

    if (@check < @restaurant.capacity) && (@reservation.people < @restaurant.capacity)
      if @reservation.save
        redirect_to root_path, notice: "Thank you for making a reservation!"
      else
        render action: :new, notice: "WTF"
      end
    else
      render action: :new, notice: "HELLO"
    end

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
