class AddIndoorToActivities < ActiveRecord::Migration
  def change
    add_column :activities, :indoor, :boolean, null: false, default: true
  end
end
