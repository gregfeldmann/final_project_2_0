class CreateRecommendRatings < ActiveRecord::Migration
  def change
    create_table :recommend_ratings do |t|
      t.integer :rating_id
      t.integer :friend_id

      t.timestamps

    end
  end
end
