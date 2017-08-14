class CreateRecommends < ActiveRecord::Migration
  def change
    create_table :recommends do |t|
      t.integer :friend_id
      t.integer :entertainment_id
      t.string :title
      t.string :rating
      t.string :friend

      t.timestamps

    end
  end
end
