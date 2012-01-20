class Ingredient < ActiveRecord::Base
<<<<<<< HEAD
	has_one :category, :unit
	belongs_to :recipe
end
=======
	belongs_to :recipe
	belongs_to :item
end
>>>>>>> e639704607bdf0da7188041b9ca4a8e8552750c1
