class RecipePicture < ActiveRecord::Base
<<<<<<< HEAD
	attr_accessible :recipe_id, :title, :image
	mount_uploader :image, ImageUploader
=======
	belongs_to :recipes
>>>>>>> 5f51cf8301f9d1eccc91d8651cf88bc04a2d146e
end
