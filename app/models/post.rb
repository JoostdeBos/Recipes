class Post < ActiveRecord::Base
	acts_as_superclass
	
	#has_many :likes, :recipes, :comments, :taggings
	#has_many :taggings

	belongs_to :user
	has_many :recipes
end