class CreateActivityitems < ActiveRecord::Migration
  def change
    create_table :activityitems do |t|
      t.belongs_to :activity, null: false
      t.belongs_to :item, null: false
    end
  end
end
