class Recipe < Post
	def self.base_class
		Recipe
	end

	#belongs_to :post
 	has_many :ingredients
end
