class CreateEntertainments < ActiveRecord::Migration
  def change
    create_table :entertainments do |t|
      t.string :title
      t.string :rating
      t.string :picture
      t.string :category

      t.timestamps

    end
  end
end
