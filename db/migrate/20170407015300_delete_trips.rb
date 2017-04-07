class DeleteTrips < ActiveRecord::Migration[5.0]
  def change
    drop_table :trips_memberships
  end
end
