class Recipe < ActiveRecord::Base
	belongs_to :post
	has_many :ingredients
 	has_many :items, :through => :ingredients
 	has_many :comments
 	accepts_nested_attributes_for :ingredients
end
