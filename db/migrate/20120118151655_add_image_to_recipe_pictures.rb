class AddImageToRecipePictures < ActiveRecord::Migration
  def change
    add_column :recipe_pictures, :image, :string
  end
end
