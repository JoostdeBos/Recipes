class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts, :as_relation_superclass => true do |t|
      t.integer :user_id

      t.timestamps
    end
  end
end