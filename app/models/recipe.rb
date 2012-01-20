class Recipe < ActiveRecord::Base
	acts_as :post
	has_many :comments
end