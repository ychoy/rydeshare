class CreateTrips < ActiveRecord::Migration[5.0]
  def change
    create_table :trips_memberships do |t|

      t.timestamps
    end
  end
end
