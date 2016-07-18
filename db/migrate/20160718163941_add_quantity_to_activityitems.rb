class AddQuantityToActivityitems < ActiveRecord::Migration
  def change
    add_column :activityitems, :quantity, :string
  end
end
