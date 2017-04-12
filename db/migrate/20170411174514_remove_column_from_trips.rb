class RemoveColumnFromTrips < ActiveRecord::Migration[5.0]
  def change
    remove_column :trips, :admin_id
  end
end
