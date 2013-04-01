class Restaurant < ActiveRecord::Base
  has_many :reservations
  attr_accessible :capacity, :city, :cuisine, :name, :rating, :website
end
