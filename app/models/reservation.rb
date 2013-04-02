class Reservation < ActiveRecord::Base
  belongs_to :user
  belongs_to :restaurant
  attr_accessible :date, :people, :time

  def date= (new_date)
    new_date = Time.zone.parse(new_date) if new_date.class == String
    write_attribute :date, new_date
  end
end
