class Flight < ::ActiveRecord::Base
  belongs_to :originating_location, :class => "Location", :foreign_key => "originating_location_id"
  belongs_to :destination_location, :class => "Location", :foreign_key => "destination_location_id"
end