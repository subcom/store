class AddColumnRoleToUsers < ActiveRecord::Migration[8.0]
  def change
    add_column :users, :role, :integer
  end
end
