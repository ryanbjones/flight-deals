class Location < ActiveRecord::Base
  has_many :originating_flights, :class_name => "Flight", :foreign_key => "originating_location_id"
  has_many :destination_flights, :class_name => "Flight", :foreign_key => "destination_location_id"
end