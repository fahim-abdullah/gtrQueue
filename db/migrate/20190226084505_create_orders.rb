class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
		# Index
		t.string :prefix
		t.string :awbnum
		t.string :terminal_charge
		t.string :pieces
		t.string :perishable_status
		# Locate
		t.string :pieces_found
		t.string :partial_release
		t.string :located_time # authenticate
		# Documents
		t.string :arranged_time # authenticate
		# Delivery
		t.string :delivered_by
		t.string :delivery_time # authenticate
    end
  end
end