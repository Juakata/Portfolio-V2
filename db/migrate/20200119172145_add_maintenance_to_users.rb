class AddMaintenanceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :maintenance, :boolean
  end
end
