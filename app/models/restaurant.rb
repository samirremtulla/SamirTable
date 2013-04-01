class Restaurant < ActiveRecord::Base
  attr_accessible :capacity, :city, :cuisine, :name, :rating, :website
end
