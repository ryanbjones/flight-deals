class AddFlightTable < ActiveRecord::Migration
  def change
    create_table :flights do |t|
        t.integer :originating_location_id
        t.integer :destination_location_id
        t.integer :price
        t.string  :available_months
        t.integer :minimum_duration
        t.string  :link_to_deal
        t.date    :posted_on
        t.boolean :is_international

        t.timestamps null: false
      end
  end
end
