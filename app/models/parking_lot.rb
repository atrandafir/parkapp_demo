class ParkingLot < ActiveRecord::Base
  belongs_to :parking_type
  attr_accessible :user_id, :parking_type_id, :latitude, :longitude
  validates :user_id, :presence => true
  validates :parking_type_id, :presence => {:message => "Tienes que seleccionar el tipo de plaza"}
  validates :latitude, :presence => true
  validates :longitude, :presence => true
end
