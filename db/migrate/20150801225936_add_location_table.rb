class AddLocationTable < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.string :city
      t.string :country
      t.string :region
      t.string :continent

      t.timestamps null: false
    end
  end
end
Location.create(:city => "Los Angeles", :country => "USA", :region => "North America", :continent => "North America")
Location.create(:city => "Auckland", :country => "New Zealand", :region => "South Pacific", :continent => "Australia")
la = Location.first
nz = Location.last
Flight.create(:originating_location_id => 1, :destination_location_id => 2, :price => 800, :available_months => "January February", :minimum_duration => 10, :link_to_deal => "http://nba.com", :posted_on => Date.current, :is_international => true)