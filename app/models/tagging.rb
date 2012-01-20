class Tagging < ActiveRecord::Base
	belongs_to :posts
	has_many :tags
end
