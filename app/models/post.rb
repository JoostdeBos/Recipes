class Post < ActiveRecord::Base
	acts_as_superclass
	#has_many :likes, :recipes, :comments, :taggings
	#has_many :taggings
	has_many :comments

end