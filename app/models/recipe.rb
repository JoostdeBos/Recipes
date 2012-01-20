class Recipe < ActiveRecord::Base
<<<<<<< HEAD
	acts_as :post
	has_many :comments
end
=======
	belongs_to :post
	has_many :ingredients
 	has_many :items, :through => :ingredients
end
>>>>>>> e639704607bdf0da7188041b9ca4a8e8552750c1
