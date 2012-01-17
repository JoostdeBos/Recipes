class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.int :user_id
      t.string :type

      t.timestamps
    end
  end
end
