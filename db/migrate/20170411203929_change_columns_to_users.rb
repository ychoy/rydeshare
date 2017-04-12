class ChangeColumnsToUsers < ActiveRecord::Migration[5.0]
  def change
    rename_column :users, :driver?, :driver
    rename_column :users, :rider?, :rider
  end
end
