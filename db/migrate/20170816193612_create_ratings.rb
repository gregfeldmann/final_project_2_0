class CreateRatings < ActiveRecord::Migration
  def change
    create_table :ratings do |t|
      t.integer :entertainment_id
      t.integer :friend_id
      t.integer :rating
      t.string :url
      t.string :title
      t.string :friend

      t.timestamps

    end
  end
end
