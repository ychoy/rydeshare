class RemoveColumnsFromUsers < ActiveRecord::Migration[5.0]
  def change
    remove_column :users, :rider
    remove_column :users, :driver
  end
end
