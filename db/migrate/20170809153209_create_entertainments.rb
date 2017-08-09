class CreateEntertainments < ActiveRecord::Migration
  def change
    create_table :entertainments do |t|
      t.string :title
      t.string :running_time
      t.string :rating
      t.string :picture

      t.timestamps

    end
  end
end
