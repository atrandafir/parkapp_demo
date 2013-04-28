class ParkingLot < ActiveRecord::Base
  attr_accessible :user_id, :parking_type_id, :latitude, :longitude
  validates :user_id, :presence => true
  validates :parking_type_id, :presence => true
  validates :latitude, :presence => true
  validates :longitude, :presence => true
end
