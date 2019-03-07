class AddUsersToOrders < ActiveRecord::Migration[5.2]
  def change
  	add_column :orders, :agent_name, :string
  end
end
