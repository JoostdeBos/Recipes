class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.string :instructions
      t.integer :post_id
      t.time :preperation_time
      t.string :course

      t.timestamps
    end
  end
end
