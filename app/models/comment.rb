class Comment < Post
	def self.base_class
		Comment
	end

	#belongs_to :posts, :users
	belongs_to :users
end
