class Item < ActiveRecord::Base
	has_many :ingredients
	has_many :recipes, :through => :ingredients
end
