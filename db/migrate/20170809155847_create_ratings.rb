class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :entertainment_id
      t.integer :friend_id

      t.timestamps

    end
  end
end
