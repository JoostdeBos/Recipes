class Recipe < ActiveRecord::Base
	acts_as :post
	has_many :ingredients
 	has_many :items, :through => :ingredients
 	has_many :comments
 	accepts_nested_attributes_for :ingredients
end
