class Post < ActiveRecord::Base
	self.inheritance_column = 'class-name'

	#has_many :likes, :recipes, :comments, :taggings
	has_many :taggings
end