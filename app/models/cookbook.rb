class Cookbook < ActiveRecord::Base
	belongs_to :posts
	belongs_to :users
	has_many :recipes, :through => :recipes_cookbooks
end