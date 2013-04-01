class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  attr_accessible :date, :people, :time
end
