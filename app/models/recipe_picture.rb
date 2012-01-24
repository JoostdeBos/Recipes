class RecipePicture < ActiveRecord::Base
	attr_accessible :recipe_id, :title, :image
	mount_uploader :image, ImageUploader
	belongs_to :recipes
end
