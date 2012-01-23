class Cookbook < ActiveRecord::Base
	belongs_to :posts, :users
	has_many :recipes, :through => :recipes_cookbooks
end