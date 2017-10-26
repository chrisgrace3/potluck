class CreateAttendings < ActiveRecord::Migration
  def change
    create_table :attendings do |t|
      t.integer :potluck_id, null: false
      t.integer :attendee_id, null: false
      t.string :dish, null: false

      t.timestamps
    end
  end
end
