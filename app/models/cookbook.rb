class Cookbook < ActiveRecord::Base
	acts_as :posts
	belongs_to :users
	has_many :recipes, :through => :recipes_cookbooks
end