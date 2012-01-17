class CreateRecipePictures < ActiveRecord::Migration
  def change
    create_table :recipe_pictures do |t|
      t.string :url
      t.integer :recipe_id
      t.string :title

      t.timestamps
    end
  end
end
