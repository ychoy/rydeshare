class Trip < ActiveRecord::Migration[5.0]
  def change
    create_table :trips do |t|
      t.string :departure_address
      t.float :departure_latitude
			t.float :departure_longitude
			t.integer :total_seats
			t.integer :open_seats
			t.boolean :full?
      t.timestamps
    end
  end
end
