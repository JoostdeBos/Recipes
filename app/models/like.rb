class Like < Post
	def self.base_class
		Like
	end

	#belongs_to :post, :users
end