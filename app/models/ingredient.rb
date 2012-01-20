class Ingredient < ActiveRecord::Base
	has_one :category, :unit
	belongs_to :item
end
