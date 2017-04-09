class AddColumnToTrips < ActiveRecord::Migration[5.0]
  def change
    add_column :trips, :admin_id, :integer
  end
end
