require 'rails_helper'

RSpec.describe Flight, :type => :model do
  let(:flight) { Flight.create(
    :originating_location_id => originating_location.id,
    :destination_location_id => destination_location.id
    )
  }
  let(:originating_location) { Location.create(:city => "Los Angeles") }
  let(:destination_location) { Location.create(:city => "Dublin") }

  context "associations" do
    it 'returns a location for an originating_location' do
      expect(flight.originating_location).to eq(originating_location)
    end

    it 'returns a location for a destination_location' do
      expect(flight.destination_location).to eq(destination_location)
    end
  end
end