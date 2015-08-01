class Location < ActiveRecord::Migration
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
