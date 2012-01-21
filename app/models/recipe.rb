class Recipe < ActiveRecord::Base
	belongs_to :post
	has_many :ingredients
 	has_many :items, :through => :ingredients
 	accepts_nested_attributes_for :ingredients
 	accepts_nested_attributes_for :items
end
