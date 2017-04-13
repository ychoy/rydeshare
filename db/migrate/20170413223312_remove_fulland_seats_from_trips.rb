class RemoveFullandSeatsFromTrips < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :full?
    remove_column :trips, :open_seats
  end
end
