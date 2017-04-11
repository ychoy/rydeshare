class ChangeColumnToMemberships < ActiveRecord::Migration[5.0]
  def change
   change_column :memberships, :member_type, 'integer USING CAST(member_type AS integer)'
  end

end
