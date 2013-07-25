class AddDefaultQuantityToOrderItems < ActiveRecord::Migration
  def change
    change_column :order_items, :quantity, :integer, default: 0
  end
end
