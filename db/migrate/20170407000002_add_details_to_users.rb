class AddDetailsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :last_name, :string
    add_column :users, :phone_number, :string
    add_column :users, :driver?, :boolean
    add_column :users, :rider?, :boolean
  end
end
