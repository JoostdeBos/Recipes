class Ingredient < ActiveRecord::Base
	has_one :category
	has_one :unit
	belongs_to :recipe
end