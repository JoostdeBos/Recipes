class Recipe < ActiveRecord::Base
	belongs_to :post
 	has_many :ingredients, :through => :recipe_ingredients
end
