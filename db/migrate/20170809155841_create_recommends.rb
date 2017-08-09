class CreateRecommends < ActiveRecord::Migration
  def change
    create_table :recommends do |t|
      t.integer :friend_id
      t.integer :entertainment_id
      t.integer :recommend_rating_id

      t.timestamps

    end
  end
end
