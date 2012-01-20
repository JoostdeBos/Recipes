class Recipe < ActiveRecord::Base
	belongs_to :post
	has_many :ingredients
 	has_many :items, :through => :ingredients
end