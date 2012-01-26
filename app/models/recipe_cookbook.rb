class RecipeCookbook < ActiveRecord::Base
	belongs_to :cookbooks
	belongs_to :recipes
end
