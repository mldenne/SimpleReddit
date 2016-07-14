class CreateLinks < ActiveRecord::Migration
  def change
    create_table :links do |t|
      t.text :title
      t.text :url
      t.integer :user_id
      t.integer :subreddit_id

      t.timestamps null: false
    end
  end
end
