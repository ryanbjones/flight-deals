require 'rails_helper'

RSpec.describe Location, :type => :model do
  context "associations" do
    let(:flight) { Flight.create(
      :originating_location_id => originating_location.id,
      :destination_location_id => destination_location.id
      )
    }
    let(:originating_location) { Location.create(:city => "Los Angeles") }
    let(:destination_location) { Location.create(:city => "Dublin") }

    it 'returns flights that originated from the location' do
      expect(originating_location.originating_flights).to eq([flight])
    end

    it 'returns flights by destination' do
      expect(destination_location.destination_flights).to eq([flight])
    end
  end
end