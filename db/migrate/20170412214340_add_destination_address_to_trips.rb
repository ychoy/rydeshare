class AddDestinationAddressToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :destination_address, :string
  end
end
