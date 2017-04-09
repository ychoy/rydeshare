class ChangeColumnsToTrips < ActiveRecord::Migration[5.0]
  def change
    rename_column :trips, :departure_address, :address
    rename_column :trips, :departure_latitude, :latitude
    rename_column :trips, :departure_longitude, :longitude
  end
end
