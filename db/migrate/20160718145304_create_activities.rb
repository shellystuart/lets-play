class CreateActivities < ActiveRecord::Migration
  def change
    create_table :activities do |t|
      t.string :title, null: false
      t.text :description, null: false
      t.text :instructions, null: false
      t.string :image
    end
  end
end
